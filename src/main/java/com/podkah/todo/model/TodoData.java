package com.podkah.todo.model;

import lombok.NonNull;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.IntStream;

public class TodoData {

  private static int idValue = 1;

  private List<Todo> items = new ArrayList<>();

  public TodoData() {
    IntStream.range(0, 10).forEach(i ->
        add(new Todo("Todo " + i, "Todo detail for todo " + i, LocalDate.now())));
  }

  public List<Todo> getItems() {
    return Collections.unmodifiableList(items);
  }

  public void add(@NonNull Todo t) {
    t.setId(idValue);
    items.add(t);
    idValue++;
  }

  public void remove(int id) {
    items.removeIf(i -> i.getId() == id);
  }

  public Todo getTodo(int id) {
    return items.stream().filter(i -> i.getId() == id).findFirst().orElse(null);
  }

  public void update(@NonNull Todo t) {
    var it = items.listIterator();
    while (it.hasNext()) {
      Todo todo = it.next();
      if (todo.equals(t)) {
        it.set(t);
        break;
      }
    }
  }
}
