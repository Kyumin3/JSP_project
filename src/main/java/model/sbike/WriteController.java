package model.sbike;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import utils.FileUtil;
import utils.JSFunction;

public class WriteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

				
				
				
			
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
				
				String saveDirectory =req.getServletContext().getRealPath("/uploads");
				MultipartRequest mr = FileUtil.uploadFile(req, saveDirectory);
				SbikeDTO dto = new SbikeDTO();
				dto.setWriterId(mr.getParameter("writerId"));
				dto.setTitle(mr.getParameter("title"));
				dto.setContent(mr.getParameter("content"));
				
				
				String fileName =mr.getFilesystemName("ofile1");
				if(fileName!=null) {
					
					String now =new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
					String ext = fileName.substring(fileName.lastIndexOf("."));
					String newFileName =now + ext;
					
					File oldFile = new File(saveDirectory +File.separator + fileName);
					File newFile = new File(saveDirectory +File.separator + newFileName);
					oldFile.renameTo(newFile);
					dto.setOfile1(fileName);
					dto.setSfile1(newFileName);
					
				}
				
				try {
					Thread.sleep(500);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				
				String fileName2 =mr.getFilesystemName("ofile2");
				if(fileName2!=null) {
					
					String now =new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
					String ext = fileName2.substring(fileName2.lastIndexOf("."));
					String newFileName =now + ext;
					
					
					File oldFile = new File(saveDirectory +File.separator + fileName2);
					File newFile = new File(saveDirectory +File.separator + newFileName);
					oldFile.renameTo(newFile);
					
					dto.setOfile2(fileName2);
					dto.setSfile2(newFileName);
					
				}
				
				try {
					Thread.sleep(500);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				
				String fileName3 =mr.getFilesystemName("ofile3");
				if(fileName3!=null) {
					
					String now =new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
					String ext = fileName3.substring(fileName3.lastIndexOf("."));
					String newFileName =now + ext;
					
					
					File oldFile = new File(saveDirectory +File.separator + fileName3);
					File newFile = new File(saveDirectory +File.separator + newFileName);
					oldFile.renameTo(newFile);
					
					dto.setOfile3(fileName3);
					dto.setSfile3(newFileName);
					
				}
				
				
				SbikeDAO dao = new SbikeDAO();
				int result =dao.insertReview(dto);
				dao.close();
				
				if(result ==1 ) {
					resp.sendRedirect("../sbike/reviewboard.do");
					
				}else {
					resp.sendRedirect("../sbike/write.do");
				}
	}

}
