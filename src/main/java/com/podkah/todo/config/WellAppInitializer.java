package com.podkah.todo.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

@Slf4j
public class WellAppInitializer implements WebApplicationInitializer {

  private static final String DISPATCHER_SERVLET = "dispatcher";

  @Override
  public void onStartup(ServletContext servletContext) throws ServletException {
    log.info("onStartup");

    // Spring app context
    var context = new AnnotationConfigWebApplicationContext();
    context.register(WebConfig.class);

    // Dispatcher servlet
    var dispatcherServlet = new DispatcherServlet(context);

    // Register and configure the dispatcher servlet
    var registration = servletContext.addServlet(DISPATCHER_SERVLET, dispatcherServlet);

    registration.setLoadOnStartup(1);
    registration.addMapping("/");
  }
}
