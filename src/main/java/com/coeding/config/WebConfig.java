package com.coeding.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.config.annotation.*;

import java.util.List;

/**
 * author Nhanle
 * */
@Configuration
public class WebConfig extends WebMvcConfigurerAdapter
        implements WebMvcConfigurer {

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/access-denied").setViewName("template/user/404/page-not-found");
        registry.addViewController("/internal-error").setViewName("template/user/404/internal-error");
        registry.addViewController("/method-denied").setViewName("template/user/404/method-denied");
    }


    //config not found page
    @Bean
    public WebServerFactoryCustomizer<ConfigurableServletWebServerFactory> containerCustomizer() {
        return container -> {
            container.addErrorPages(new ErrorPage(HttpStatus.NOT_FOUND,
                    "/access-denied"));
            container.addErrorPages(new ErrorPage(HttpStatus.METHOD_NOT_ALLOWED,
                    "/method-denied"));
            container.addErrorPages(new ErrorPage(HttpStatus.BAD_REQUEST,
                    "/access-denied"));
            container.addErrorPages(new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR,
                    "/internal-error"));

        };
    }

//    config static resources
    @Override
    public void configurePathMatch(PathMatchConfigurer configurer) {
        super.configurePathMatch(configurer);
        configurer.setUseSuffixPatternMatch(false);
    }

}
