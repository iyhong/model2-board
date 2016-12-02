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
		if(request.getParameter("boardNo") == null) {
		    response.sendRedirect(request.getContextPath()+"/board/BoardList");
		} else {
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
		    	response.sendRedirect(request.getContextPath()+"/board/BoardRemove?boardNo="+boardNo);
		    }
		}
	}

}