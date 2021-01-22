package Casio.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Casio.Dao.LoaiSanPhanDao;
import Casio.Models.LoaiSanPhamEntity;

/**
 * Servlet implementation class LoaiSanPhamServlet
 */

public class LoaiSanPhamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoaiSanPhanDao loaiSanPhanDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	public void init() {
		loaiSanPhanDao=new LoaiSanPhanDao();
    }
	
    public LoaiSanPhamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		LoaiSP(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		LoaiSP(request, response);
	}
	
	
	
	protected void LoaiSP(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) { action = ""; }
		try {
			switch (action) {
			case "new":
				showNewFormInserLoaiSanPham(request,response);
				break;
			case "insert":
				insertLoaiSanPham(request,response);
				break;
			case "delete":
				deleteLoaiSanPham(request,response);
				break;
			case "edit":
				showEditFormLoaiSanPham(request,response);
				break;
			case "update":
				updateLoaiSanPham(request,response);
				break;
			default:
				listLoaiSanPham(request,response);
				break;
			}
		}catch(SQLException e) {
			throw new ServletException(e);
		}
		
	}
	
	
	private void listLoaiSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List < LoaiSanPhamEntity > listOfLoaiSanPham = loaiSanPhanDao.getAllLoaiSanPham();
		request.setAttribute("listOfLoaiSanPham", listOfLoaiSanPham);
		RequestDispatcher dispatcher=request.getRequestDispatcher("View/LoaiSanPhams/loaisanpham-list.jsp");
		dispatcher.forward(request,response);
	}
	
	private void showNewFormInserLoaiSanPham(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		RequestDispatcher dispatcher=request.getRequestDispatcher("View/LoaiSanPhams/loaisanpham-form.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showEditFormLoaiSanPham(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		String maLoai = request.getParameter("maLoai");
		LoaiSanPhamEntity existingLoaiSanPham=loaiSanPhanDao.getLoaiSanPham(maLoai);
		RequestDispatcher dispatcher=request.getRequestDispatcher("View/LoaiSanPhams/loaisanpham-form.jsp");
		request.setAttribute("loaisanpham", existingLoaiSanPham);
		dispatcher.forward(request, response);
	}
	
	
	private void insertLoaiSanPham(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException {
		 String maLoai = request.getParameter("maLoai");
	     String tinhTrang = request.getParameter("tinhTrang");
	     
	     LoaiSanPhamEntity newLoaiSanPham=new LoaiSanPhamEntity(maLoai,tinhTrang);
	     loaiSanPhanDao.saveLoaiSanPham(newLoaiSanPham);
	     response.sendRedirect("LoaiSanPhamServlet");
	}
	
	private void updateLoaiSanPham(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException {
		String maLoai = request.getParameter("maLoai");
	    String tinhTrang = request.getParameter("tinhTrang");
	    
	    LoaiSanPhamEntity loaiSanPhamUpdate = new LoaiSanPhamEntity(maLoai,tinhTrang);
	    loaiSanPhanDao.updateLoaiSanPham(loaiSanPhamUpdate);
		response.sendRedirect("LoaiSanPhamServlet");
	}
	
	private void deleteLoaiSanPham(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException {
		String maLoai = request.getParameter("maLoai");
		
		loaiSanPhanDao.deleteLoaiSanPham(maLoai);
		response.sendRedirect("LoaiSanPhamServlet");
	}
	
}
