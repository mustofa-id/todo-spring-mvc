package com.podkah.todo.controller;

import com.podkah.todo.model.TodoData;
import com.podkah.todo.util.Mapper;
import com.podkah.todo.util.Viewer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class TodoController {

  @ModelAttribute
  public TodoData todoData() {
    return new TodoData();
  }

  @GetMapping(Mapper.ITEMS)
  public String items() {
    return Viewer.ITEM_LIST;
  }
}
