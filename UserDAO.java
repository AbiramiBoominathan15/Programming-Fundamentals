package com.chainsys.demo2.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.chainsys.demo2.model.User;

@Repository
public interface UserDAO {

	public  void save(User saveUser);
	public int update(User u1);
	public List<User>listUsers();
	public User findOne(Integer userId);
	public String findById(Integer userId);
}
