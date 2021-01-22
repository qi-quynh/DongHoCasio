package Casio.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Casio.Dao.CTKMDao;
import Casio.Models.CtkmEntity;


/**
 * Servlet implementation class CTKMServlet
 */

public class CTKMServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CTKMDao ctkmDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void init() {
		ctkmDao=new CTKMDao();
    }
    
    public CTKMServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CTKM(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CTKM(request, response);
	}
	protected void CTKM(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) { action = ""; }
		try {
			switch (action) {
			case "new":
				showNewFormInserCTKM(request, response);
				break;
			case "insert":
				insertCTKM(request, response);
				break;
			case "delete":
				deleteCTKM(request, response);
				break;
			case "edit":
				showEditFormCTKM(request, response);
				break;
			case "update":
				updateCTKM(request, response);
				break;
			default:
				listCTKM(request, response);
				break;
			}
		} catch (SQLException e) {
			throw new ServletException(e);
		}

	}

	private void listCTKM(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<CtkmEntity> listOfctkm = ctkmDao.getAllCTKM();
		request.setAttribute("listOfctkm", listOfctkm);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/View/CTKMs/ctkm-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewFormInserCTKM(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/View/CTKMs/ctkm-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditFormCTKM(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		CtkmEntity existingctkm = ctkmDao.getCTKM(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/View/CTKMs/ctkm-form.jsp");
		request.setAttribute("ctkm", existingctkm);
		dispatcher.forward(request, response);
	}

	private void insertCTKM(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		int maKm=Integer.parseInt(request.getParameter("maKm"));
		String maSp=request.getParameter("maSp");
		int phantram=Integer.parseInt(request.getParameter("phantram"));

		CtkmEntity newctkm = new CtkmEntity(phantram, maKm, maSp);
		ctkmDao.saveCTKM(newctkm);
		response.sendRedirect("CTKMServlet");
	}

	private void updateCTKM(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		int maKm=Integer.parseInt(request.getParameter("maKm"));
		String maSp=request.getParameter("maSp");
		int phantram=Integer.parseInt(request.getParameter("phantram"));

		CtkmEntity updatectkm = new CtkmEntity(id,phantram, maKm, maSp);
		ctkmDao.updateCTKM(updatectkm);
		response.sendRedirect("CTKMServlet");
	}

	private void deleteCTKM(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		ctkmDao.deleteCTKM(id);
		response.sendRedirect("CTKMServlet");
	}

}
