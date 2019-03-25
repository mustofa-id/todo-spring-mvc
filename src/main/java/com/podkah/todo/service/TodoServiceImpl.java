package com.podkah.todo.service;

import com.podkah.todo.model.Todo;
import com.podkah.todo.model.TodoData;
import lombok.Getter;
import org.springframework.stereotype.Service;

@Service
public class TodoServiceImpl implements TodoService {

  @Getter
  private final TodoData data = new TodoData();

  @Override
  public void add(Todo t) {
    data.add(t);
  }

  @Override
  public void remove(int id) {
    data.remove(id);
  }

  @Override
  public Todo getTodo(int id) {
    return data.getTodo(id);
  }

  @Override
  public void update(Todo t) {
    data.update(t);
  }
}
