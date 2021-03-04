package com.cognizant.todo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.todo.model.Todo;

@Repository
public interface ToDoRepository extends JpaRepository<Todo, Integer> {

}
