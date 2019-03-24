package com.podkah.todo.controller;

import com.podkah.todo.service.DemoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Calendar;

@Slf4j
@Controller
public class DemoController {

  private final DemoService demoService;

  @Autowired
  public DemoController(DemoService demoService) {
    this.demoService = demoService;
  }

  // http://localhost:8080/todo/hello
  @ResponseBody
  @GetMapping("hello")
  public String hello() {
    return "<h1>Hello World!</h1>";
  }

  // http://localhost:8080/todo/welcome?user=Habib+Mustofa,+S.Kom&yob=1993
  @GetMapping("welcome")
  public String welcome(@RequestParam String user, @RequestParam int yob, Model model) {

    model.addAttribute("helloMessage", demoService.getHelloMessage(user));
    model.addAttribute("age", Calendar.getInstance().get(Calendar.YEAR) - yob);
    log.info("Model: {}", model);

    // prefix + name + suffix
    // /WEB-INF/view/welcome.jsp
    return "welcome";
  }

  @ModelAttribute("welcomeMessage")
  public String welcomeMessage() {
    log.info("welcomeMessage() called");
    return demoService.getWelcomeMessage();
  }
}
