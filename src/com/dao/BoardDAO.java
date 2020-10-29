package com.dao;

import static com.common.JDBCTemplate.*;

public class BoardDAO {
	private static BoardDAO _dao;
	
	private BoardDAO() {
		
	}
	
	public static BoardDAO getBoardDAO() {
		if(_dao == null)
			_dao = new BoardDAO();
		
		return _dao;
	}

}
