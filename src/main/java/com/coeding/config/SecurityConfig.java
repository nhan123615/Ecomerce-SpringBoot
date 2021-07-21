package com.coeding.config;

import com.coeding.entity.Cart;
import com.coeding.entity.UserDetail;
import com.coeding.entity.UserOAuth;
import com.coeding.service.CustomerService;
import com.coeding.service.UserOauthService;
import com.coeding.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * author Nhanle
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    private UserService userService;
    private CustomerService customerService;
    private Cart cart;
    private UserOauthService userOauthService;

    @Autowired
    SecurityConfig(UserService userService, CustomerService customerService, Cart cart, UserOauthService userOauthService) {
        this.userService = userService;
        this.customerService = customerService;
        this.cart = cart;
        this.userOauthService = userOauthService;
    }

    @Bean
    public PasswordEncoder encoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .userDetailsService(userService)
                .passwordEncoder(encoder());
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/customer/**").hasRole("USER")
                .antMatchers(HttpMethod.POST, "/admin/**").hasRole("ADMIN")
                .antMatchers(HttpMethod.PUT, "/admin/**").hasRole("ADMIN")
                .antMatchers(HttpMethod.DELETE, "/admin/**").hasRole("ADMIN")
                .antMatchers(HttpMethod.GET, "/admin/**").hasAnyRole("ADMIN", "ADMIN_TRAINEE")
                .anyRequest().permitAll()
                .and()
                .exceptionHandling()
                .accessDeniedHandler(new AccessDeniedHandler() {
                    @Override
                    public void handle(HttpServletRequest request, HttpServletResponse response,
                                       AccessDeniedException accessDeniedException) throws IOException, ServletException {
                        response.sendRedirect(request.getContextPath() + "/method-denied");
                    }
                })


                .and()
                .formLogin()
                .loginPage("/login").permitAll()
                .successHandler(new AuthenticationSuccessHandler() {
                    @Override
                    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
                        String role = "";
                        if (authentication.getPrincipal() instanceof UserDetail) {
                            UserDetail userDetails = (UserDetail) authentication.getPrincipal();
                            authentication.getAuthorities().forEach(r -> {
                                try {
                                    if (r.getAuthority().equals("ROLE_USER")) {
                                        Long inputCustomerInfo = customerService.countByUserId(userDetails.getUser().getId());
                                        if (inputCustomerInfo > 0) {
                                            response.sendRedirect(request.getContextPath() + "/customer");
                                        } else {
                                            response.sendRedirect(request.getContextPath() + "/customer/info");
                                        }
                                    } else {
                                        response.sendRedirect(request.getContextPath() + "/admin");
                                    }
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                            });
                        }

                    }
                })
                .passwordParameter("password")
                .usernameParameter("username")
                .and()
                .rememberMe()
                .rememberMeParameter("remember-me")
                .and()
                .oauth2Login()
                .loginPage("/login")
                .userInfoEndpoint()
                .userService(userOauthService)
                .and()
                .successHandler(new AuthenticationSuccessHandler() {
                    @Override
                    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                                        Authentication authentication) throws IOException, ServletException {
                        System.err.println(authentication.getPrincipal());
                        if (authentication.getPrincipal() instanceof OAuth2User) {
                            OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();
                            String message = (String) request.getSession().getAttribute("message");
                            userService.processUserOAuth(String.valueOf(oAuth2User.getAttributes().get("email")) ,String.valueOf(oAuth2User.getAttributes().get("name")));
                            request.getSession().setAttribute("message", "Login success!");
                        }
                        response.sendRedirect(request.getContextPath() + "/");
                    }
                })

                .and()
                .logout()
                .logoutUrl("/logout")
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout", "GET"))
                .clearAuthentication(true)
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID", "remember-me")
                .logoutSuccessHandler(new LogoutSuccessHandler() {
                    @Override
                    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
                        if (cart.getCartItems() != null) {
                            cart.clearCartItem();
                        }
                        response.sendRedirect(request.getContextPath() + "/");
                    }
                });

    }

}
