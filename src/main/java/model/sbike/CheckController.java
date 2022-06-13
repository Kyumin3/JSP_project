package model.sbike;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.JSFunction;

public class CheckController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		if(session.getAttribute("id")==null) {
			JSFunction.alertLocation(resp, "로그인 후 글쓰기가 가능합니다.", "../sbike/reviewboard.do");
		}else {
			req.getRequestDispatcher("../sbike/write.jsp").forward(req, resp);
			
		}
		
		
	}

}
