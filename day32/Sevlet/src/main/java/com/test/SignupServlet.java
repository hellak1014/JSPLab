package com.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("id");
		String pas = request.getParameter("password");
		String nam = request.getParameter("name");
//		String res = "<html><h3>User ID: " + uid + "<h3></html>";
//		String res1 = "<html><h3>Password: " + pas + "<h3></html>";
//		String res2 = "<html><h3>Name: " + nam + "<h3></html>";
//		response.getWriter().print(res);
//		response.getWriter().print(res1);
//		response.getWriter().print(res2);
		
		String res = "<html>";
		res += "<h3> User ID: " + uid + "<h3>";
		res += "<h3> Password: " + pas + "<h3>";
		res += "<h3> Name: " + nam + "<h3>";
		res += "</html>";
		
		response.getWriter().print(res);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
