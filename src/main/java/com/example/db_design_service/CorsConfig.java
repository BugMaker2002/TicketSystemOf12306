package com.example.db_design_service;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

//@Configuration
public class CorsConfig {
    // 当前跨域请求最大有效时长（单位s）
    private static final long MAX_AGE = 24 * 60 * 60;

    @Bean
    public CorsFilter corsFilter() {
        CorsConfiguration corsConfiguration = new CorsConfiguration();
        corsConfiguration.addAllowedOrigin("/user/userinfo"); // 1、设置访问源地址
        corsConfiguration.addAllowedHeader("*"); // 2、设置访问源请求头
        corsConfiguration.addAllowedMethod("GET"); // 3、设置访问源请求方法
        corsConfiguration.setMaxAge(MAX_AGE);
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", corsConfiguration); // 4、对接口配置跨域设置
        return new CorsFilter(source);
    }
}