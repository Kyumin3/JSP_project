package model.sbike;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.FileUtil;

public class DeleteController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String postNum=req.getParameter("postNum");
		SbikeDAO dao = new SbikeDAO();
		SbikeDTO dto = dao.readPost(postNum);
		HttpSession session = req.getSession();
		
		if(session.getAttribute("id")==null||!session.getAttribute("id").equals(dto.getWriterId())) {
			utils.JSFunction.alertLocation(resp, "로그인 후 수정 및 삭제가 가능합니다", "/sbike/reviewboard.do");
		}else if(session.getAttribute("id").equals(dto.getWriterId())) {
			FileUtil.deleteFile(req, "/uploads", dto.getSfile1());
			FileUtil.deleteFile(req, "/uploads", dto.getSfile2());
			FileUtil.deleteFile(req, "/uploads", dto.getSfile3());
			dao.deletePost(postNum);
			req.getRequestDispatcher("../sbike/reviewboard.do").forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
	
	
	

}
