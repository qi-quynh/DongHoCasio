package Casio.Controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Casio.Dao.DonHangDao;
import Casio.Models.DonHangEntity;

/**
 * Servlet implementation class DonHangServlet
 */

public class DonHangServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DonHangDao donhangDao;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	
	public void init() {
		donhangDao=new DonHangDao();
    }
	public DonHangServlet() {
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
		DonHang(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		DonHang(request, response);
	}

	protected void DonHang(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) { action = ""; }
		try {
			switch (action) {
			case "new":
				showNewFormInserDonHang(request, response);
				break;
			case "insert":
				insertDonHang(request, response);
				break;
			case "delete":
				deleteDonHang(request, response);
				break;
			case "edit":
				showEditFormDonHang(request, response);
				break;
			case "update":
				updateDonHang(request, response);
				break;
			default:
				listDonHang(request, response);
				break;
			}
		} catch (SQLException e) {
			throw new ServletException(e);
		}

	}

	private void listDonHang(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<DonHangEntity> listOfdonghang = donhangDao.getAllDonHang();
		request.setAttribute("listOfdonhang", listOfdonghang);
		RequestDispatcher dispatcher = request.getRequestDispatcher("View/DonHangs/Donhang-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewFormInserDonHang(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("View/DonHangs/Donhang-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditFormDonHang(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int maDh = Integer.parseInt(request.getParameter("maDh"));
		DonHangEntity existingDonhang = donhangDao.getDonHang(maDh);
		RequestDispatcher dispatcher = request.getRequestDispatcher("View/DonHangs/Donhang-form.jsp");
		request.setAttribute("donhang", existingDonhang);
		dispatcher.forward(request, response);
	}

	private void insertDonHang(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int userId = Integer.parseInt(request.getParameter("userId"));
		BigDecimal tongTien = new BigDecimal(request.getParameter("tongTien"));
		String hoTen = request.getParameter("hoTen");
		String diaChi = request.getParameter("diaChi");
		String sdt = request.getParameter("sdt");
		String trangThai = request.getParameter("trangThai");
		long millis=System.currentTimeMillis();   
		Date ngaymua=new java.sql.Date(millis);


		DonHangEntity newdonhang = new DonHangEntity(ngaymua,tongTien,hoTen,diaChi, sdt, trangThai, userId);
		donhangDao.saveDonHang(newdonhang);
		response.sendRedirect("DonHangServlet");
	}

	private void updateDonHang(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int maDh = Integer.parseInt(request.getParameter("maDh"));
		int userId = Integer.parseInt(request.getParameter("userId"));
		BigDecimal tongTien = new BigDecimal(request.getParameter("tongTien"));
		String hoTen = request.getParameter("hoTen");
		String diaChi = request.getParameter("diaChi");
		String sdt = request.getParameter("sdt");
		String trangThai = request.getParameter("trangThai");
		long millis=System.currentTimeMillis();   
		Date ngaymua=new java.sql.Date(millis);

		DonHangEntity donhangUpdate = new DonHangEntity(maDh,ngaymua,tongTien,hoTen,diaChi, sdt, trangThai, userId);
		donhangDao.updateDonHang(donhangUpdate);
		response.sendRedirect("DonHangServlet");
	}

	private void deleteDonHang(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int maDh = Integer.parseInt(request.getParameter("maDh"));

		donhangDao.deleteDonHang(maDh);
		response.sendRedirect("DonHangServlet");
	}

}
