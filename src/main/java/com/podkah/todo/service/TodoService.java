package com.podkah.todo.service;

import com.podkah.todo.model.Todo;
import com.podkah.todo.model.TodoData;

public interface TodoService {

  void add(Todo t);

  void remove(int id);

  Todo getTodo(int id);

  void update(Todo t);

  TodoData getData();
}
