package model.sbike;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.JSFunction;

public class LoginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session =req.getSession();
		
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");

		SbikeDAO dao = new SbikeDAO();
		SbikeDTO dto  =dao.login(id, pass);

		if(dto.getName()!=null){
			session.setAttribute("id", id);
			session.setAttribute("pass", pass);
			session.setAttribute("name", dto.getName());
			resp.sendRedirect("index.jsp");
		}else{
			JSFunction.alertLocation(resp, "회원정보와 일치하지 않습니다.", "login.jsp");
			
		}
		

		
		
		
		
		
		
		
		
		
		
	}
	
	
	

}
