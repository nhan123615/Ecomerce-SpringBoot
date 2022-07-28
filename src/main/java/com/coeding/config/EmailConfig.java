package com.coeding.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;


@Component
@ConfigurationProperties(prefix = "spring.mail")
@Data
public class EmailConfig {
    private String host;
    private String port;
    private String username;
    private String password;
}
