package model.sbike;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.apache.tomcat.util.codec.binary.Base64;

import common.DBConnPool;

public class SbikeDAO extends DBConnPool {
	
	
	
	
	public SbikeDAO() {
		super();
	}

	public void join(SbikeDTO dto) {
		
		String query = "INSERT INTO sbike(id,pass,name,email,address,tel,birth)";
				query += "VALUES(?,?,?,?,?,?,TO_DATE(?,'YYYYMMDD'))";
		try {
			byte[] encodedBytes= Base64.encodeBase64(dto.getPass().getBytes());
			String encodedTxt = new String(encodedBytes);
			
			psmt=con.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, encodedTxt);
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, dto.getAddress());
			psmt.setString(6, dto.getTel());
			psmt.setString(7, dto.getBirth());
			
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public SbikeDTO login(String id, String pass) {
		SbikeDTO dto = new SbikeDTO();
		try {
			byte[] encodedBytes= Base64.encodeBase64(pass.getBytes());
			String encodedTxt = new String(encodedBytes);
			
			String query = "SELECT * FROM sbike WHERE id=? AND pass=?";
			psmt=con.prepareStatement(query);
			psmt.setString(1, id);
			psmt.setString(2, encodedTxt);
			rs=psmt.executeQuery();
			if(rs.next())
				dto.setName(rs.getString(3));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public int insertReview(SbikeDTO dto) {
		
		int result =0;
		String query = "INSERT INTO reviewboard(writerId,postNum,title,content,count,ofile1,sfile1,ofile2,sfile2,ofile3,sfile3)";
				query += " VALUES(?,postnum_seq.nextval,?,?,0,?,?,?,?,?,?)";
		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, dto.getWriterId());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getContent());
			psmt.setString(4, dto.getOfile1());
			psmt.setString(5, dto.getSfile1());
			psmt.setString(6, dto.getOfile2());
			psmt.setString(7, dto.getSfile2());
			psmt.setString(8, dto.getOfile3());
			psmt.setString(9, dto.getSfile3());
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println(query);
			e.printStackTrace();
		}
		return result;
	}
	
	
	public void updateVisitCount(String postNum) {
		String query ="UPDATE reviewboard SET count=count+1 WHERE postNum=?";
		
		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, postNum);
			psmt.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("게시물 조회수 증가 중 예외발생");
			e.printStackTrace();
		}
	}
	
	public List<SbikeDTO> reviewBoardSelect(Map<String, Object> map){
		List<SbikeDTO> boardList = new Vector<SbikeDTO>();
		String sql = " "
				+ "SELECT * FROM ( " 
				+ "SELECT Tb.*, ROWNUM rNUM FROM ( "
				+ " SELECT * FROM reviewboard ";
		if(map.get("searchWord")!=null) {	
			sql += " WHERE " + map.get("searchField")
					+" LIKE '%" + map.get("searchWord") + "%'";
		}
		sql += " ORDER BY postNum DESC"
				+" ) Tb"
				+") "
				+ "WHERE rNUM BETWEEN ? AND ?";
		try {
			psmt=con.prepareStatement(sql);
			psmt.setString(1, map.get("start").toString());
			psmt.setString(2, map.get("end").toString());
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				SbikeDTO dto = new SbikeDTO();
				dto.setWriterId(rs.getString("writerId"));
				dto.setPostNum(rs.getInt("postNum"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostDate(rs.getDate("postDate"));
				dto.setCount(rs.getInt("count"));
				dto.setOfile1(rs.getString("ofile1"));
				dto.setSfile1(rs.getString("sfile1"));
				dto.setOfile2(rs.getString("ofile2"));
				dto.setSfile2(rs.getString("sfile2"));			
				dto.setOfile3(rs.getString("ofile3"));
				dto.setSfile3(rs.getString("sfile3"));
				boardList.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return boardList;
	}
	
	
	public int selectCount(Map<String,Object> map) {
		
		int totalCount=0;
		String query = "SELECT COUNT(*) FROM reviewboard";	
		
		if(map.get("searchWord")!= null) {				
			query += " WHERE " + map.get("searchField") + " " + "like '%" + map.get("searchWord") + "%'";
		}
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			rs.next();
			totalCount = rs.getInt(1);
			
		}catch(SQLException e) {
			System.out.println("게시물 카운트중 예외 발생");
			e.printStackTrace();
		}
		
		return totalCount;	
	}
	
	public SbikeDTO readPost(String postNum) {
		
		String query = "SELECT * FROM reviewboard WHERE postNum=?";
		SbikeDTO dto = new SbikeDTO();
		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, postNum);
			rs=psmt.executeQuery();
			
			if(rs.next()) {
				dto.setWriterId(rs.getString(1));
				dto.setPostNum(Integer.parseInt(rs.getString(2)));
				dto.setTitle(rs.getString(3));
				dto.setContent(rs.getString(4));
				dto.setPostDate(rs.getDate(5));
				dto.setCount(rs.getInt(6));
				dto.setOfile1(rs.getString(7));
				dto.setSfile1(rs.getString(8));
				dto.setOfile2(rs.getString(9));
				dto.setSfile2(rs.getString(10));
				dto.setOfile3(rs.getString(11));
				dto.setSfile3(rs.getString(12));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public void updatePost(SbikeDTO dto) {
		
		String query="UPDATE reviewboard SET title=?, content=?, ofile1=?, sfile1=?, ofile2=?, sfile2=?, ofile3=?, sfile3=?";
				query += "WHERE postNum=?";
		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getOfile1());
			psmt.setString(4, dto.getSfile1());
			psmt.setString(5, dto.getOfile2());
			psmt.setString(6, dto.getSfile2());
			psmt.setString(7, dto.getOfile3());
			psmt.setString(8, dto.getSfile3());
			psmt.setInt(9, dto.getPostNum());
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void deletePost(String postNum) {
		
		String query = "DELETE FROM reviewboard WHERE postNum=?";
		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, postNum);
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public int todayCount() {
		
		int todayCount=0;
		String query = "SELECT COUNT(*) FROM reviewboard WHERE TO_CHAR(postdate,'YY/MM/DD')= TO_CHAR(SYSDATE,'YY/MM/DD')";	
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			rs.next();
			todayCount = rs.getInt(1);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return todayCount;	
	}
	
	public int checkId(String id) {
		int result=0;
		String query ="SELECT * FROM sbike WHERE id=?";
		
		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, id);
			rs=psmt.executeQuery();
			if(rs.next()) {
				result=0;
			}else {
				result=1;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	

}
