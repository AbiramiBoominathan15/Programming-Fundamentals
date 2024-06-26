package com.chainsys.demo2.controller;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.demo2.dao.UserDAO;
import com.chainsys.demo2.dao.UserImpl;
import com.chainsys.demo2.model.User;
import com.chainsys.demo2.model.mapper.UserMapper;

@Controller
public class MyController {
	
	@Autowired
	UserImpl userImpl;
	UserDAO userDao;
	JdbcTemplate jdbcTemplate;
	UserMapper  mapper;
	 @RequestMapping("/home") 
	 public static String home() {
				  return "home.jsp"; 
	  }
	  @RequestMapping("/save") 
	  public static String save() {
	  return "success.jsp"; 
	  }
	 
@PostMapping("/register")
//public String saveUser(@RequestParam("name") form name
//RequestParam("name") String name form html naming
public String saveUser(@RequestParam("name") String name,@RequestParam("password")String password)throws ClassNotFoundException,SQLException {
	System.out.println("in register handle");
	User user= new User();
	user.setUsername(name);
	user.setPassword(password);
	System.out.println(user.getUsername()+user.getPassword());
	userImpl.insertStudent(user);
	return "update.jsp";
}
@GetMapping("/update")
public String updateUser(@RequestParam("username")String username,@RequestParam("password")String password)throws ClassNotFoundException,SQLException {
	System.out.println("in register handle");
	User user= new User();
	user.setUsername(username);
	user.setPassword(password);
	System.out.println(user.getPassword());
	userImpl.update(user);
	return "success.jsp";
}
//search
@GetMapping("/findUserbyId")
public String findUserById(@RequestParam("userId") Integer id,Model model) {
	System.out.println("finding");
	String name=userDao.findById(id);
	System.out.println(name);
	if(name==null) {
		throw new EmptyResultDataAccessException("User not found",id);
	}else {
		System.out.println("user found"+name);
		model.addAttribute("userFound", name);
	}
	return "findsuccess.jsp";
}
//display
@GetMapping("/listofusers")
public String getAllUser(Model model) {
	System.out.println("getting data");
	List<User>users=userImpl.getAllUsers();
	model.addAttribute("USER_LIST", users);
	return "listusers.jsp";
}
@GetMapping("/delete")
public String deleteUser(@RequestParam("id") Integer id,Model model)
{
	
	
	
    User user=new User();
    user.setId(id);
	/*
	 * user.setStatus(0);
	 */    
    userImpl.deleteUser(user);
    List<User> users=userImpl.getAllUsers();
    model.addAttribute("users",users);
    return "userTable.jsp";
}


	}


