package model.sbike;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReadController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String postNum = req.getParameter("postNum");
		SbikeDAO dao = new SbikeDAO();
		dao.updateVisitCount(postNum);
		SbikeDTO dto = dao.readPost(postNum);
		
		req.setAttribute("dto", dto);
		req.setAttribute("postNum", postNum);
		
		req.getRequestDispatcher("/sbike/read.jsp").forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
	}
	
	

}
