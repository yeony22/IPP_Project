package com.dto;

public class MemberDTO {
	private int memberno;
	private String memberid;
	private String memberpwd;
	private String membername;
	private String memberphone;
	private int memberlevel;

	public MemberDTO() {
		super();
	}
	
	public MemberDTO(int memberno, String memberid, String memberpwd, String membername, String memberphone, int memberlevel) {
		super();
		this.memberno = memberno;
		this.memberid = memberid;
		this.memberpwd = memberpwd;
		this.membername = membername;
		this.memberphone = memberphone;
		this.memberlevel = memberlevel;
	}
	
	public MemberDTO(String memberid, String memberpwd, String membername, String memberphone) {
		super();
		this.memberid = memberid;
		this.memberpwd = memberpwd;
		this.membername = membername;
		this.memberphone = memberphone;
	}
	
	public int getMemberno() {
		return memberno;
	}

	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	
	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getMemberpwd() {
		return memberpwd;
	}

	public void setMemberpwd(String memberpwd) {
		this.memberpwd = memberpwd;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}

	public String getMemberphone() {
		return memberphone;
	}

	public void setMemberphone(String memberphone) {
		this.memberphone = memberphone;
	}

	public int getMemberlevel() {
		return memberlevel;
	}

	public void setMemberlevel(int memberlevel) {
		this.memberlevel = memberlevel;
	}

}
