package com.cognizant.todo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cognizant.todo.model.Todo;
import com.cognizant.todo.model.User;
import com.cognizant.todo.service.TodoService;

@Controller
@SessionAttributes("name")
public class TodoController {
	
	TodoService todoService;

	public TodoController(TodoService todoService) {
		super();
		this.todoService = todoService;
	}

	@RequestMapping("/")
	public String loginPage(@ModelAttribute("user") User user) {
		return "index";
	}
	
	@PostMapping("/login")
	public String welcomePage(@ModelAttribute("user") User user, ModelMap model) {
		if(todoService.authentication(user)) {
			model.addAttribute("name", user.getUsername());
			return "welcome";
		}
		model.addAttribute("error", "Incorrect Username or Password...!");
		return "index";
	}
	
	@RequestMapping("/list-todos")
	public String TodoPage(ModelMap model) {
		String name = (String) model.getAttribute("name");
		List<Todo> allToDos = todoService.getAllToDos(name);
		model.addAttribute("todoList", allToDos);
		return "todoPage";
	}
	
	@RequestMapping("/updatePage")
	public String updatePage(@RequestParam("id") int id,ModelMap model) {
		model.addAttribute("todo", todoService.getToDoById(id));
		return "updatepage";
	}
	
	@PostMapping("/updatePage")
	public String updatePage(@ModelAttribute("todo") Todo todo, ModelMap model) {
		todoService.updateToDo(todo);
		String name = (String) model.getAttribute("name");
		List<Todo> allToDos = todoService.getAllToDos(name);
		model.addAttribute("todoList", allToDos);
		return "todoPage";
	}
	
	@RequestMapping("/delete")
	public String deletePage(@RequestParam("id") int id, ModelMap model) {
		todoService.deleteToDo(id);
		String name = (String) model.getAttribute("name");
		List<Todo> allToDos = todoService.getAllToDos(name);
		model.addAttribute("todoList", allToDos);
		return "todoPage";
	}
}
