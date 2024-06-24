package com.chainsys.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.chainsys.model.UserDetails;
import com.chainsys.util.UserConnection;

public class UserDetail {
    public boolean insertUser(String name, String phonenumber, String email) throws ClassNotFoundException {
        String sql = "INSERT INTO User (name, phonenumber, email) VALUES (?, ?, ?)";
        try (
        		Connection connection = UserConnection.getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql)
        ) {
            pstmt.setString(1, name);
            pstmt.setString(2, phonenumber);
            pstmt.setString(3, email);
            
            int rowsInserted = pstmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public List<UserDetails> getAllUsers() throws ClassNotFoundException {
        List<UserDetails> userList = new ArrayList<>();
        String sql = "SELECT name, phonenumber, email FROM User";
        try (
            Connection connection = UserConnection.getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery()
        ) {
            while (rs.next()) {
                String name = rs.getString("name");
                String phoneNumber = rs.getString("phonenumber");
                String email = rs.getString("email");
                
                UserDetails user = new UserDetails(name, phoneNumber, email);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
    public boolean updateUserByEmail(String email, String newName, String newPhoneNumber, String newEmail) throws ClassNotFoundException {
        String sql = "UPDATE User SET name = ?, phonenumber = ?, email = ? WHERE email = ?";
        try (
            Connection connection = UserConnection.getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql)
        ) {
            pstmt.setString(1, newName);
            pstmt.setString(2, newPhoneNumber);
            pstmt.setString(3, newEmail);
            pstmt.setString(4, email);
            
            int rowsUpdated = pstmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public boolean deleteUser(String name) throws ClassNotFoundException {
        String sql = "DELETE FROM User WHERE name = ?";
        try (Connection connection = UserConnection.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setString(1, name);

            int rowsDeleted = pstmt.executeUpdate();
            return rowsDeleted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

}
