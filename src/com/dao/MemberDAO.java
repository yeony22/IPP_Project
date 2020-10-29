package com.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.dto.MemberDTO;
import static com.common.JDBCTemplate.*;


public class MemberDAO {
	private Properties prop;
	private static MemberDAO _dao;
	
	public MemberDAO() {
		prop = new Properties();
		String filePath = MemberDAO.class.getResource("/config/ipp-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		
		} catch(FileNotFoundException e) {
			e.printStackTrace();
			
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public static MemberDAO getMemberDAO() {
		if(_dao == null)
			_dao = new MemberDAO();
		
		return _dao;
	}
	
	public int insertMember(Connection con, MemberDTO mDTO) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, mDTO.getMemberid());
			pstmt.setString(2, mDTO.getMemberpwd());
			pstmt.setString(3, mDTO.getMembername());
			pstmt.setString(4, mDTO.getMemberphone());
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
			
		} finally {
			try {
				pstmt.close();

			} catch(Exception e) {
				e.printStackTrace();
				
			}
		}
		return result;
	}
	
	public MemberDTO getMember(String memberid) {
		MemberDTO member = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("findId");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, memberid);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				member = new MemberDTO();
				
				member.setMemberid(rset.getString("memberid"));
				member.setMemberpwd(rset.getString("memberpwd"));
				member.setMemberphone(rset.getString("memberphone"));
			}				
		} catch (SQLException e) {
				e.printStackTrace();
				
		} finally {
			try {
				rset.close();
				pstmt.close();

			} catch(Exception e) {
				e.printStackTrace();
				
			}
		}
		return member;
	}
}
