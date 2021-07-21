package com.coeding.config;

import com.ckfinder.connector.ConnectorServlet;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.io.File;
import java.io.IOException;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

@Configuration
public class CKFinderServletConfig {

    @Value("${ckeditor.storage.image.path}")
    private String baseDir;
    @Value("${ckeditor.access.image.url}")
    private String baseURL;

    @Bean
    public ServletRegistrationBean connectCKFinder(){
        ServletRegistrationBean registrationBean=new ServletRegistrationBean(new ConnectorServlet(),"/ckfinder/core/connector/java/connector.java");
        registrationBean.addInitParameter("XMLConfig","classpath:/static/ckfinder.xml");
        registrationBean.addInitParameter("debug","false");
        registrationBean.addInitParameter("configuration","com.coeding.config.CKFinderConfig");
        //ckfinder.xml

        registrationBean.addInitParameter("baseDir",baseDir);
        registrationBean.addInitParameter("baseURL",baseURL);

        String dir="";
        if (baseDir.endsWith("/")){
            dir = baseDir.substring(0,baseDir.length() -1);
        }else{
            dir = baseDir;
        }

        if (!dir.isEmpty()){
            File theDir = new File(dir);
            if (!theDir.exists()){
                theDir.mkdirs();
            }
        }

        return registrationBean;
    }


}
