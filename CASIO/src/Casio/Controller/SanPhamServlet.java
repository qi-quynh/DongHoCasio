package Casio.Controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Casio.Dao.SanPhamDao;
import Casio.Models.SanPhamEntity;

/**
 * Servlet implementation class SanPhamServlet
 */

public class SanPhamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SanPhamDao SanPhamDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void init() {
		SanPhamDao=new SanPhamDao();
    }
	
    public SanPhamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SP(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SP(request, response);
	}
	
	
	protected void SP(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) { action = ""; }
		try {
			switch (action) {
			case "new":
				showNewFormInserSanPham(request,response);
				break;
			case "insert":
				insertSanPham(request,response);
				break;
			case "delete":
				deleteSanPham(request,response);
				break;
			case "edit":
				showEditFormSanPham(request,response);
				break;
			case "update":
				updateSanPham(request,response);
				break;
			default:
				listSanPham(request,response);
				break;
			}
		}catch(SQLException e) {
			throw new ServletException(e);
		}
		
	}
	
	
	private void listSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List < SanPhamEntity > listOfSanPham = SanPhamDao.getAllSanPham();
		request.setAttribute("listOfSanPham", listOfSanPham);
		RequestDispatcher dispatcher=request.getRequestDispatcher("View/SanPhams/sanpham-list.jsp");
		dispatcher.forward(request,response);
	}
	
	private void showNewFormInserSanPham(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		RequestDispatcher dispatcher=request.getRequestDispatcher("View/SanPhams/sanpham-form.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showEditFormSanPham(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		String maSp = request.getParameter("maSp");
		SanPhamEntity existingSanPham=SanPhamDao.getSanPham(maSp);
		RequestDispatcher dispatcher=request.getRequestDispatcher("View/SanPhams/sanpham-form.jsp");
		request.setAttribute("sanpham", existingSanPham);
		dispatcher.forward(request, response);
	}
	
	
	private void insertSanPham(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException {
		String maSp = request.getParameter("maSp");
		String maLoai = request.getParameter("maLoai");
		BigDecimal gia = new BigDecimal(request.getParameter("gia"));
	    int soLuongKho = Integer.parseInt(request.getParameter("soLuongKho"));
	    int soLuongBan = Integer.parseInt(request.getParameter("soLuongBan"));
	    String hinh = request.getParameter("hinh");
	    String tinhNang = request.getParameter("tinhNang");
	    String moTa = request.getParameter("moTa");

	    Timestamp ngayThem=new Timestamp(System.currentTimeMillis());  
	    
	    
	     SanPhamEntity newSanPham=new SanPhamEntity(maSp, gia, ngayThem
	     		,soLuongKho,soLuongBan,hinh.trim(), tinhNang, moTa, maLoai);
	     SanPhamDao.saveSanPham(newSanPham);
	     response.sendRedirect("SanPhamServlet");
	}
	
	private void updateSanPham(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String maSp = request.getParameter("maSp");
		String maLoai = request.getParameter("maLoai");
		BigDecimal gia = new BigDecimal(request.getParameter("gia"));
	    int soLuongKho = Integer.parseInt(request.getParameter("soLuongKho"));
	    int soLuongBan = Integer.parseInt(request.getParameter("soLuongBan"));
	    String hinh = request.getParameter("hinh");
	    String tinhNang = request.getParameter("tinhNang");
	    
	    String moTa = request.getParameter("moTa");
	    
	    
	    Timestamp ngayThem=new Timestamp(System.currentTimeMillis());  
	    
	    SanPhamEntity SanPhamUpdate = new SanPhamEntity(maSp, gia, ngayThem
	     		,soLuongKho,soLuongBan,hinh.trim(), tinhNang, moTa, maLoai);
	    SanPhamDao.updateSanPham(SanPhamUpdate);
		response.sendRedirect("SanPhamServlet");
	}
	
	private void deleteSanPham(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException {
		String maSp = request.getParameter("maSp");
		
		SanPhamDao.deleteSanPham(maSp);
		response.sendRedirect("SanPhamServlet");
	}

}
