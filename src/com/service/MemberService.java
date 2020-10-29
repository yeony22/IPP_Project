package com.service;

import java.sql.Connection;

import com.dao.MemberDAO;
import com.dto.MemberDTO;
import static com.common.JDBCTemplate.*;

public class MemberService {
	MemberDAO mDAO;
	
	public MemberService() {
		mDAO = new MemberDAO();
	}
	
	public int insertMember(MemberDTO mDTO) {
		Connection con = getConnection();
		int result = mDAO.insertMember(con, mDTO);
		
		if(result > 0)
			commit(con);
		else
			rollback(con);
		
		close(con);
		
		return result;
	}
}
