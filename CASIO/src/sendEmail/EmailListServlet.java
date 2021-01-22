package sendEmail;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;

/**
 * Servlet implementation class EmailListServlet
 */

public class EmailListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		gui(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			gui(request, response);
			
		
	}
	private void gui(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String action = request.getParameter("action");
		
		String url = "email.jsp";
		if(action == null)
		{
			url ="email.jsp";
		}
		else if(action.equals("send"))
		{
		String email = request.getParameter("email");
		String from = "quynhkun27@gmail.com";
		String subject = "Xác nhận đơn hàng từ Shop đồng hồ Casio";
		String body = "Chào " + ".\n \n"
				+ "Cảm ơn quý khách đã đặt mua đồng hồ từ shop chúng tôi"
				+ "Chúng tôi sẽ giao hàng sớm nhất cho quý khách \n";
		boolean isBodyHTML = false;
		try
		{
			
			MailUtilGmail.sendMail(email, from, subject, body, isBodyHTML);
			url ="/index.jsp";
		}
		catch (MessagingException e)
		{
			String errorMes = "Xin lỗi vì hệ thống chúng tôi đang gặp một vài trục trặc. \n. Xin quý khách vui lòng thử lại sau";
		}
		
		}

		RequestDispatcher dispatcher= request.getRequestDispatcher(url);
		dispatcher.forward(request,response);
	}
}
	

	


