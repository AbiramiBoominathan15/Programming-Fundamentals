package com.chainsys.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.dao.UserDetail;

/**
 * Servlet implementation class UpdateUserServlet
 */
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String newName = request.getParameter("newName");
        String newPhoneNumber = request.getParameter("newPhoneNumber");
        String newEmail = request.getParameter("newEmail");

        UserDetail userDetailDAO = new UserDetail();
        boolean updated = false;
        try {
            updated = userDetailDAO.updateUserByEmail(email, newName, newPhoneNumber, newEmail);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        if (updated) {
            response.sendRedirect("userLogin.jsp");
        } else {
            response.getWriter().println("Failed to update user details.");
        }
    }

}
