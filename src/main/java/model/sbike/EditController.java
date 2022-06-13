package model.sbike;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import utils.FileUtil;

public class EditController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String postNum = req.getParameter("postNum");
		SbikeDAO dao = new SbikeDAO();
		SbikeDTO dto = dao.readPost(postNum);
		
		if(session.getAttribute("id")==null||!session.getAttribute("id").equals(dto.getWriterId())) {
			utils.JSFunction.alertLocation(resp, "로그인 후 수정 및 삭제가 가능합니다", "../sbike/reviewboard.do");
		}else if(session.getAttribute("id").equals(dto.getWriterId())) {
			req.setAttribute("dto", dto);
			req.getRequestDispatcher("edit.jsp").forward(req, resp);
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		String saveDirectory =req.getServletContext().getRealPath("uploads");
		
		MultipartRequest mr = FileUtil.uploadFile(req, saveDirectory);
		
		HttpSession session = req.getSession();
		
		SbikeDTO dto = new SbikeDTO();
		
		dto.setPostNum(Integer.parseInt(mr.getParameter("postNum")));
		dto.setWriterId((String)session.getAttribute("id"));
		dto.setTitle(mr.getParameter("title"));
		dto.setContent(mr.getParameter("content"));
		
		System.out.println(mr.getParameter("content"));
		
		String prevOfile1 =mr.getParameter("prevOfile1");
		String prevSfile1 =mr.getParameter("prevSfile1");
		String prevOfile2 =mr.getParameter("prevOfile2");
		String prevSfile2 =mr.getParameter("prevSfile2");
		String prevOfile3 =mr.getParameter("prevOfile3");
		String prevSfile3 =mr.getParameter("prevSfile3");
		
		
		String fileName = mr.getFilesystemName("ofile1");
		if(fileName !=null) {
			String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
			String ext =fileName.substring(fileName.lastIndexOf("."));
			String newFileName=now +ext;
			
			File oldFile = new File(saveDirectory + File.separator +fileName);
			File newFile = new File(saveDirectory + File.separator +newFileName);
			oldFile.renameTo(newFile);
			
			dto.setOfile1(fileName);
			dto.setSfile1(newFileName);
			
			if(prevOfile1!=null) {
				FileUtil.deleteFile(req, "/uploads", prevSfile1);
			}
			
		}else {
			
			if(prevOfile1!=null) {
				dto.setOfile1(prevOfile1);
				dto.setSfile1(prevSfile1);
			}else {
			}
		}
		
		
		String fileName2 = mr.getFilesystemName("ofile2");
		if(fileName2 !=null) {
			String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
			String ext =fileName2.substring(fileName2.lastIndexOf("."));
			String newFileName=now +ext;
			
			File oldFile = new File(saveDirectory + File.separator +fileName);
			File newFile = new File(saveDirectory + File.separator +newFileName);
			oldFile.renameTo(newFile);
			
			dto.setOfile2(fileName2);
			dto.setSfile2(newFileName);
			
			if(prevOfile2!=null) {
				FileUtil.deleteFile(req, "/uploads", prevSfile2);
			}
			
		}else {
			
			if(prevOfile2!=null) {
				dto.setOfile2(prevOfile2);
				dto.setSfile2(prevSfile2);
			}else {
			}
		}
		
		String fileName3 = mr.getFilesystemName("ofile3");
		if(fileName3 !=null) {
			String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
			String ext =fileName3.substring(fileName3.lastIndexOf("."));
			String newFileName=now +ext;
			
			File oldFile = new File(saveDirectory + File.separator +fileName3);
			File newFile = new File(saveDirectory + File.separator +newFileName);
			oldFile.renameTo(newFile);
			
			dto.setOfile3(fileName3);
			dto.setSfile3(newFileName);
			
			if(prevOfile3!=null) {
				FileUtil.deleteFile(req, "/uploads", prevSfile3);
			}
			
		}else {
			
			if(prevOfile3!=null) {
				dto.setOfile3(prevOfile3);
				dto.setSfile3(prevSfile3);
			}else {
			}
		}
		
		SbikeDAO dao = new SbikeDAO();
		dao.updatePost(dto);
		
		resp.sendRedirect("../sbike/read.do?postNum="+dto.getPostNum());
		
	}
	

	
	
}
