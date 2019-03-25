package com.podkah.todo.controller;

import com.podkah.todo.model.Todo;
import com.podkah.todo.model.TodoData;
import com.podkah.todo.service.TodoService;
import com.podkah.todo.util.Attribute;
import com.podkah.todo.util.Mapper;
import com.podkah.todo.util.Viewer;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@Slf4j
@Controller
public class TodoController {

  private final TodoService todoService;

  @Autowired
  public TodoController(TodoService todoService) {
    this.todoService = todoService;
  }

  @ModelAttribute
  public TodoData todoData() {
    return todoService.getData();
  }

  @GetMapping(Mapper.ITEMS)
  public String items() {
    return Viewer.LIST;
  }

  @GetMapping(Mapper.FORM)
  public String form(@RequestParam(required = false, defaultValue = "-1") int id, Model model) {
    String title;
    var todo = todoService.getTodo(id);
    if (todo == null) {
      title = "New";
      todo = new Todo("", "", LocalDate.now());
    } else {
      title = "Edit (" + todo.getTitle() + ')';
    }
    model.addAttribute(Attribute.TODO_ITEM, todo);
    model.addAttribute(Attribute.TITLE, title);
    return Viewer.FORM;
  }

  @PostMapping(Mapper.FORM)
  public String processItem(@ModelAttribute(Attribute.TODO_ITEM) Todo todo) {
    log.info("TODO_ITEM from FORM: {}", todo);
    if (todo.getId() == 0) {
      todoService.add(todo);
    } else {
      todoService.update(todo);
    }
    return "redirect:/" + Mapper.ITEMS;
  }

  @GetMapping(Mapper.DELETE)
  public String delete(@RequestParam int id) {
    log.info("DELETING TODO with ID: {}", id);
    todoService.remove(id);
    return "redirect:/" + Mapper.ITEMS;
  }

  @GetMapping(Mapper.DETAIL)
  public String detail(@RequestParam int id, Model model) {
    var todo = todoService.getTodo(id);
    if (todo == null) return "redirect:/" + Mapper.ITEMS;
    else model.addAttribute(Attribute.TODO_ITEM, todo);
    return Viewer.DETAIL;
  }
}
