package model.sbike;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.JSFunction;

public class JoinController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		SbikeDTO dto = new SbikeDTO();
		SbikeDAO dao = new SbikeDAO();
		String id = req.getParameter("id");
		int result = dao.checkId(id);
		System.out.println(result);
		if(result==0) {
			JSFunction.alertBack(resp, "존재하는 아이디입니다.");
		}else {
		
		String pass = req.getParameter("pass");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String address = req.getParameter("address1") + " "+ req.getParameter("address2") + req.getParameter("address3")
			+ req.getParameter("postcode");
		String tel = req.getParameter("tel");
		String birth = req.getParameter("yy")+ req.getParameter("mm")+ req.getParameter("dd");
		
		dto.setId(id);
		dto.setPass(pass);
		dto.setName(name);
		dto.setEmail(email);
		dto.setAddress(address);
		dto.setTel(tel);
		dto.setBirth(birth);
		
		dao.join(dto);
		
		req.getRequestDispatcher("/sbike/login.jsp").forward(req, resp);
		}
	}
}
