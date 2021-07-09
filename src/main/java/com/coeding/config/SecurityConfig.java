package com.coeding.config;

import com.coeding.entity.UserDetail;
import com.coeding.service.CustomerService;
import com.coeding.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;
/**
 * author Nhanle
 * */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    private UserService userService;
    private CustomerService customerService;
    @Autowired
    SecurityConfig(UserService userService,CustomerService customerService) {
        this.userService = userService;
        this.customerService = customerService;
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
//				.csrf().csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse())
//				.and()
                .authorizeRequests()
                .antMatchers("/customer/**").hasRole("USER")
                .antMatchers("/admin/**").hasRole("ADMIN")
                .antMatchers("/**","/css/**","/js/**","/img/**").permitAll()
                .anyRequest()
                .authenticated()
                .and()
                .exceptionHandling()
                .accessDeniedPage("/access-denied")

                .and()
                .formLogin()
                .loginPage("/login").permitAll()
//                .defaultSuccessUrl("/",true)
                .successHandler(new AuthenticationSuccessHandler() {
                    @Override
                    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
                        String role ="";
                        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
                        authentication.getAuthorities().forEach(r->{
                            try {
                                if (r.getAuthority().equals("ROLE_USER")){
                                    Long inputCustomerInfo = customerService.countByUserId(userDetails.getUser().getId());
                                    if (inputCustomerInfo >0){
                                        response.sendRedirect(request.getContextPath()+"/customer");
                                    }else {
                                        response.sendRedirect(request.getContextPath()+"/customer/info");
                                    }
                                }else{
                                    response.sendRedirect(request.getContextPath()+"/admin");
                                }
                            }catch (IOException e){
                                e.printStackTrace();
                            }
                        });
                    }
                })
                .passwordParameter("password")
                .usernameParameter("username")
                .and()
                .rememberMe()
                .rememberMeParameter("remember-me")

                .and()
                .logout()
                .logoutUrl("/logout")
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout","GET"))
                .clearAuthentication(true)
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID","remember-me")
                .logoutSuccessUrl("/");
    }

}
