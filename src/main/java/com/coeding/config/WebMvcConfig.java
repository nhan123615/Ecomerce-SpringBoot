package com.coeding.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter{
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		//   file:D:\\data\\file\\image\\
		registry.addResourceHandler("/public/image/**").addResourceLocations("classpath:/static/uploadmedia/");
		registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
		registry.addResourceHandler("/ckfinder/**").addResourceLocations("classpath:/static/ckfinder/");
		super.addResourceHandlers(registry);
	}
}
