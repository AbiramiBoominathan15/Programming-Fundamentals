package com.chainsys.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.dao.UserDetail;
import com.chainsys.model.UserDetails;

/**
 * Servlet implementation class UserDetailsServlet
 */
public class UserDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	/*
	 * protected void doPost(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { String name =
	 * request.getParameter("name"); String phoneNumber =
	 * request.getParameter("phonenumber"); String email =
	 * request.getParameter("email");
	 * 
	 * UserDetails user = new UserDetails(name, phoneNumber, email);
	 * 
	 * UserDetail userDetailDAO = new UserDetail();
	 * 
	 * boolean success = false; try { success =
	 * userDetailDAO.insertUser(user.getName(), user.getPhonenumber(),
	 * user.getEmail()); } catch (ClassNotFoundException e) { e.printStackTrace(); }
	 * 
	 * if (success) { request.setAttribute("name", user.getName());
	 * request.setAttribute("phonenumber", user.getPhonenumber());
	 * request.setAttribute("email", user.getEmail());
	 * 
	 * request.getRequestDispatcher("userLogin.jsp").forward(request, response); }
	 * else { request.setAttribute("message", "Failed to register user");
	 * request.getRequestDispatcher("index.jsp").forward(request, response); } }
	 *//*
	 *37 60
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { String name =
 * request.getParameter("name"); String phoneNumber =
 * request.getParameter("phonenumber"); String email =
 * request.getParameter("email");
 * 
 * UserDetails user = new UserDetails(name, phoneNumber, email);
 * 
 * UserDetail userDetailDAO = new UserDetail();
 * 
 * boolean success = false; try { success =
 * userDetailDAO.insertUser(user.getName(), user.getPhonenumber(),
 * user.getEmail()); } catch (ClassNotFoundException e) { e.printStackTrace(); }
 * 
 * if (success) { request.setAttribute("name", user.getName());
 * request.setAttribute("phonenumber", user.getPhonenumber());
 * request.setAttribute("email", user.getEmail());
 * 
 * String updatedName = "Updated Name"; String updatedPhoneNumber =
 * "Updated Phone"; String updatedEmail = "updated@example.com"; boolean updated
 * = false; try { updated = userDetailDAO.updateUserByEmail(email, updatedName,
 * updatedPhoneNumber, updatedEmail); } catch (ClassNotFoundException e) {
 * e.printStackTrace(); }
 * 
 * if (updated) { request.setAttribute("message",
 * "User details updated successfully"); } else {
 * request.setAttribute("message", "Failed to update user details"); }
 * 
 * request.getRequestDispatcher("userLogin.jsp").forward(request, response); }
 * else { request.setAttribute("message", "Failed to register user");
 * request.getRequestDispatcher("index.jsp").forward(request, response); } }
 * 
 */
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String name = request.getParameter("name");
    String phoneNumber = request.getParameter("phonenumber");
    String email = request.getParameter("email");

    UserDetails user = new UserDetails(name, phoneNumber, email);

    UserDetail userDetailDAO = new UserDetail();

    boolean success = false;
    try {
        success = userDetailDAO.insertUser(user.getName(), user.getPhonenumber(), user.getEmail());
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    if (success) {
        List<UserDetails> userList = null;
        try {
            userList = userDetailDAO.getAllUsers();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        if (userList != null) {
            request.setAttribute("userList", userList);
            request.getRequestDispatcher("userLogin.jsp").forward(request, response);
        } else {
            request.setAttribute("message", "Failed to retrieve user list");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    } else {
        request.setAttribute("message", "Failed to register user");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
}



