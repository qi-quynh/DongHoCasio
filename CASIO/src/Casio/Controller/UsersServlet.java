package Casio.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Casio.Dao.UsersDao;
import Casio.Models.UsersEntity;


/**
 * Servlet implementation class UsersServlet
 */

public class UsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsersDao usersDao;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public void init() {
		usersDao=new UsersDao();
    }
	
	public UsersServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Users(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Users(request, response);
	}

	protected void Users(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) { action = ""; }
		try {
			switch (action) {
			case "new":
				showNewForm(request, response);
				break;
			case "insert":
				insertUser(request, response);
				break;
			case "delete":
				deleteUser(request, response);
				break;
			case "edit":
				showEditForm(request, response);
				break;
			case "update":
				updateUser(request, response);
				break;
			default:
				listUser(request, response);
				break;
			}
		} catch (SQLException e) {
			throw new ServletException(e);
		}
	}

	private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<UsersEntity> listUser = usersDao.getAllUser();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("View/Userss/user-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("View/Userss/user-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		UsersEntity existingUser = usersDao.getUser(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("View/Userss/user-form.jsp");
		request.setAttribute("user", existingUser);
		dispatcher.forward(request, response);
	}

	private void insertUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String sdt = request.getParameter("sdt");
		String address = request.getParameter("address");
		int allowed=Integer.parseInt(request.getParameter("allowed"));
		

		UsersEntity newUser = new UsersEntity(username,password,email,sdt,address,allowed);
		usersDao.saveUser(newUser);
		response.sendRedirect("UsersServlet");
	}

	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int userId = Integer.parseInt(request.getParameter("userId"));
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String sdt = request.getParameter("sdt");
		String address = request.getParameter("address");
		int allowed=Integer.parseInt(request.getParameter("allowed"));

		UsersEntity user = new UsersEntity(userId,username,password,email,sdt,address,allowed);
		usersDao.updateUser(user);
		response.sendRedirect("UsersServlet");
	}

	private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		usersDao.deleteUser(id);
		response.sendRedirect("UsersServlet");
	}

}
