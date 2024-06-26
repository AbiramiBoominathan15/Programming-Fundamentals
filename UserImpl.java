package com.chainsys.demo2.dao;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.chainsys.demo2.model.User;
import com.chainsys.demo2.model.mapper.UserMapper;

@Repository
public class UserImpl {
	@Autowired
	JdbcTemplate jdbcTemplate;

	public void insertStudent(User user) throws ClassNotFoundException, SQLException {
		String save = "insert into users (username,password)values(?,?)";
		Object[] params = { user.getUsername(), user.getPassword() };
		int noOfRows = jdbcTemplate.update(save, params);
		System.out.println("in DAO -save");
	}

	public int update(User user) {
		String sql = "update users set password=? where username=?";
		Object[] params = { user.getPassword(), user.getUsername() };
		int noOfRows = jdbcTemplate.update(sql, params);
		System.out.println("noofUpdated:" + noOfRows);
		return noOfRows;

	}

	public List<User> getAllUsers() {
		String select = "select id,username,password from users";
		List<User> userList = jdbcTemplate.query(select, new UserMapper());
		return userList;
	}

	public void deleteUser(User user) {
		String delete = "delete from users where id=?";
		Object[] params = { user.getId() };
		jdbcTemplate.update(delete, params);
	}
}
