package Casio.Controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Casio.Dao.ChiTietDonHangDao;
import Casio.Models.ChiTietDonHangEntity;

/**
 * Servlet implementation class ChiTietDonHangServlet
 */

public class ChiTietDonHangServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ChiTietDonHangDao chitietdonhangDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void init() {
		chitietdonhangDao=new ChiTietDonHangDao();
    }
    
    public ChiTietDonHangServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ChiTietDonHang(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ChiTietDonHang(request, response);
	}
	
	protected void ChiTietDonHang(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) { action = ""; }
		try {
			switch (action) {
			case "new":
				showNewFormInserCTDH(request, response);
				break;
			case "insert":
				insertCTDH(request, response);
				break;
			case "delete":
				deleteCTDH(request, response);
				break;
			case "edit":
				showEditFormCTDH(request, response);
				break;
			case "update":
				updateCTDH(request, response);
				break;
			default:
				listCTDH(request, response);
				break;
			}
		} catch (SQLException e) {
			throw new ServletException(e);
		}

	}

	private void listCTDH(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<ChiTietDonHangEntity> listOfctdh = chitietdonhangDao.getAllCTDH();
		request.setAttribute("listOfctdh", listOfctdh);
		RequestDispatcher dispatcher = request.getRequestDispatcher("View/ChiTietDonHangs/CTDH-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewFormInserCTDH(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("View/ChiTietDonHangs/CTDH-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditFormCTDH(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		ChiTietDonHangEntity existingCTDH = chitietdonhangDao.getCTDH(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("View/ChiTietDonHangs/CTDH-form.jsp");
		request.setAttribute("ctdh", existingCTDH);
		dispatcher.forward(request, response);
	}

	private void insertCTDH(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int maDh = Integer.parseInt(request.getParameter("maDh"));
		String maSp = request.getParameter("maSp");
		int soLuong = Integer.parseInt(request.getParameter("soLuong"));

		ChiTietDonHangEntity newctdh = new ChiTietDonHangEntity(soLuong, maDh, maSp);
		chitietdonhangDao.saveCTDH(newctdh);
		response.sendRedirect("ChiTietDonHangServlet");
	}

	private void updateCTDH(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		int maDh = Integer.parseInt(request.getParameter("maDh"));
		String maSp = request.getParameter("maSp");
		int soLuong = Integer.parseInt(request.getParameter("soLuong"));


		ChiTietDonHangEntity updatectdh = new ChiTietDonHangEntity(id, soLuong, maDh, maSp);
		chitietdonhangDao.updateCTDH(updatectdh);
		response.sendRedirect("ChiTietDonHangServlet");
	}

	private void deleteCTDH(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		chitietdonhangDao.deleteCTDH(id);
		response.sendRedirect("ChiTietDonHangServlet");
	}


}
