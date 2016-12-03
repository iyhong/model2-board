package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Board;
import service.BoardDao;

@WebServlet("/board/BoardRemove")
public class BoardRemove extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		if(request.getParameter("boardNo") == null) {
		    response.sendRedirect(request.getContextPath()+"/board/BoardList");
		} else {
			if(request.getParameter("fail")!=null){
				String fail = request.getParameter("fail");
				request.setAttribute("fail", fail);
				System.out.println("request 에 fail 넣음");
			}else{
				request.setAttribute("fail", "");
			}
			request.getRequestDispatcher("/board/boardRemoveForm.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("boardNo") == null || request.getParameter("boardPw") == null) {
		    response.sendRedirect(request.getContextPath()+"/board/BoardList");
		} else {
		    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		    System.out.println("boardNo :"+boardNo);
		    String boardPw = request.getParameter("boardPw");
		    System.out.println("boardPw :"+boardPw);
		    Board board = new Board();
		    board.setBoardNo(boardNo);
		    board.setBoardPw(boardPw);
		    
		    BoardDao boardDao = new BoardDao();
		    
		    if(boardDao.deleteBoard(board)!=0){
		    	System.out.println("삭제성공");
		    	response.sendRedirect(request.getContextPath()+"/board/BoardList");
		    } else {
		    	System.out.println("삭제실패..ㅠㅠ");
		    	String fail = "password incorrect";
		    	response.sendRedirect(request.getContextPath()+"/board/BoardRemove?boardNo="+boardNo+"&fail="+fail);
		    }
		}
	}

}