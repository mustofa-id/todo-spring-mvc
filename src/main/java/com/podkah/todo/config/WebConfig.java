package com.podkah.todo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages = "com.podkah.todo")
public class WebConfig {

  public static final String RESOLVER_PREFIX = "/WEB-INF/view/";
  public static final String RESOLVER_SUFFIX = ".jsp";

  @Bean
  public ViewResolver viewResolver() {
    var viewResolver = new InternalResourceViewResolver();
    viewResolver.setPrefix(RESOLVER_PREFIX);
    viewResolver.setSuffix(RESOLVER_SUFFIX);
    return viewResolver;
  }
}
