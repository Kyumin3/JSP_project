package model.sbike;

import java.sql.Date;

public class SbikeDTO {
	
	private	String id;
	private String pass;
	private	String name;
	private String email;
	private	String address;
	private	String tel;
	private String birth;
	private	Date joinDate;
	
	private String writerId;
	private int postNum;
	private String title;
	private String content;
	private Date postDate;
	private int count;
	private String ofile1;
	private String sfile1;
	private String ofile2;
	
	
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	
	
	public int getPostNum() {
		return postNum;
	}
	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getOfile1() {
		return ofile1;
	}
	public void setOfile1(String ofile1) {
		this.ofile1 = ofile1;
	}
	public String getSfile1() {
		return sfile1;
	}
	public void setSfile1(String sfile1) {
		this.sfile1 = sfile1;
	}
	public String getOfile2() {
		return ofile2;
	}
	public void setOfile2(String ofile2) {
		this.ofile2 = ofile2;
	}
	public String getSfile2() {
		return sfile2;
	}
	public void setSfile2(String sfile2) {
		this.sfile2 = sfile2;
	}
	public String getOfile3() {
		return ofile3;
	}
	public void setOfile3(String ofile3) {
		this.ofile3 = ofile3;
	}
	public String getSfile3() {
		return sfile3;
	}
	public void setSfile3(String sfile3) {
		this.sfile3 = sfile3;
	}
	private String sfile2;
	private String ofile3;
	private String sfile3;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	
	


}
