package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.MemberDTO;
import com.service.MemberService;

/**
 * Servlet implementation class MemberInsert
 */
@WebServlet("/joinMember.do")
public class MemberJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberJoin() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberid = request.getParameter("memberid");
		String memberpwd = request.getParameter("memberpwd");
		String membername = request.getParameter("membername");
		String memberphone = request.getParameter("memberphone");
		
		MemberDTO mDTO = new MemberDTO(memberid, memberpwd, membername, memberphone);
		MemberService mService = new MemberService();
		
		int result = mService.insertMember(mDTO);
		
		if(result > 0) {
			System.out.println("데이터 추가 성공");
			response.sendRedirect("index.jsp");
		} else
			System.out.println("데이터 추가 실패");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
