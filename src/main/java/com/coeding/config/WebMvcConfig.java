package com.coeding.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import java.nio.file.Path;
import java.nio.file.Paths;

@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter{
	@Value("${ckeditor.storage.image.path}")
	private String baseDir;

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		if (baseDir.endsWith("/")){
			baseDir = baseDir.substring(0,baseDir.length() -1);
		}

		Path uploadDir = Paths.get(baseDir);
		String uploadPath = uploadDir.toFile().getAbsolutePath();
		registry.addResourceHandler("/public/image/**").addResourceLocations("file:/"+uploadPath+"/");
		registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
		registry.addResourceHandler("/ckfinder/**").addResourceLocations("classpath:/static/ckfinder/");
		super.addResourceHandlers(registry);
	}
}
