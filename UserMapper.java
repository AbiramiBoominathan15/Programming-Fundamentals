
package com.chainsys.demo2.model.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.chainsys.demo2.model.User;

public class UserMapper implements RowMapper<User> {
	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		int id = rs.getInt(1);
		String username = rs.getString(2);
		String password = rs.getString(3);
		user.setId(id);
		user.setUsername(username);
		user.setPassword(password);
		return user;
	}

}
