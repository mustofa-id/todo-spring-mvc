package com.podkah.todo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDate;

@Data
@EqualsAndHashCode(of = "id") // of = {"id", "title"} | for multiple comparison
public class Todo {

  private int id;
  private String title;
  private String detail;
  private LocalDate deadline;

  public Todo(String title, String detail, LocalDate deadline) {
    this.setTitle(title);
    this.setDetail(detail);
    this.setDeadline(deadline);
  }

}
