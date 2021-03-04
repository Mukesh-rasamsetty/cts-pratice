package com.cognizant.todo.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.cognizant.todo.model.Todo;
import com.cognizant.todo.model.User;
import com.cognizant.todo.repository.ToDoRepository;

@Service
public class TodoService {

	private ToDoRepository repository;

	public TodoService(ToDoRepository repository) {
		super();
		this.repository = repository;
	}

	public boolean authentication(User user) {
		if (user.getUsername().equalsIgnoreCase("dummy") && user.getPassword().equals("dummy"))
			return true;
		return false;
	}

	@Transactional
	public List<Todo> getAllToDos(String name) {
		List<Todo> list = repository.findAll();
		List<Todo> todo_list = new ArrayList<Todo>();
		for(Todo temp : list) {
			if(temp.getUser().equalsIgnoreCase(name))
				todo_list.add(temp);
		}
		return todo_list;
	}

	@Transactional
	public void deleteToDo(int id) {
		repository.deleteById(id);
	}

	@Transactional
	public Todo getToDoById(int id) {
		Optional<Todo> todo = repository.findById(id);
		if(todo.isPresent())
			return todo.get();
		return null;
	}

	@Transactional
	public void updateToDo(Todo todo) {
		repository.delete(todo);
		repository.save(todo);
	}

}
