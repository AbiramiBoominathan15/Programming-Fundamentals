package com.chainsys.demo2.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.chainsys.demo2.model.User;
import com.chainsys.demo2.model.mapper.UserMapper;

@Repository
public class UserImpl implements UserDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	UserMapper mapper;
	
	@Override
	public void insertStudent(User user) {
		String save = "insert into users (username,password, status)values(?,?,?)";
		Object[] params = { user.getUsername(), user.getPassword() ,1};
		int noOfRows = jdbcTemplate.update(save, params);
		System.out.println("in DAO -save");
	}

	@Override
	public int update(User user) {
		String sql = "update users set password=? where username=?";
		Object[] params = { user.getPassword(), user.getUsername() };
		int noOfRows = jdbcTemplate.update(sql, params);
		System.out.println("noofUpdated:" + noOfRows);
		return noOfRows;

	}

	@Override
	public List<User> getAllUsers() {
		String select = "select id,username,password from users where status=1";
		List<User> userList = jdbcTemplate.query(select, new UserMapper());
		return userList;
	}

	@Override
	public void deleteUser(User user) {
		String delete = "update users set status=?  where id=?";
		Object[] params = {user.getStatus(), user.getId() };
		jdbcTemplate.update(delete, params);
	}
	
	@Override
public String findById(Integer userId) {
	String sql="select username from users where id=?";
	System.out.println("user Id passed: "+userId);
	String queryForObject=jdbcTemplate.queryForObject(sql, String.class,userId);
	System.out.println(queryForObject);

return queryForObject;
}
	@Override
public List<User> search(User user)
{
    String search="select id,username,password from users where username=?";
    Object[] name = {user.getUsername()};
List<User> userList=jdbcTemplate.query(search,new UserMapper(),name);
    return userList;
    
}

	@Override
	public void save(User saveUser) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<User> listUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findOne(Integer userId) {
		// TODO Auto-generated method stub
		return null;
	}


}