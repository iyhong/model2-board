package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Board;
import service.BoardDao;

@WebServlet("/board/BoardModify")
public class BoardModify extends HttpServlet {
	private BoardDao boardDao;
	private Board board;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("boardNo") == null) {
		    response.sendRedirect(request.getContextPath()+"/board/BoardList");
		} else {
		    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		    System.out.println("boardModify param boardNo:"+boardNo);
		    boardDao = new BoardDao();
		    board = boardDao.selectBoardByKey(boardNo);
		    request.setAttribute("board", board);
		    request.getRequestDispatcher("/board/boardModifyForm.jsp").forward(request, response);
		    
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		if(request.getParameter("boardNo") == null || request.getParameter("boardPw") == null) {
		    response.sendRedirect(request.getContextPath()+"/board/BoardList");
		} else {
		    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		    System.out.println("boardModifyAction param boardNo :"+boardNo);
		    String boardPw = request.getParameter("boardPw");
		    System.out.println("boardModifyAction param boardPw :"+boardPw);
		    String boardTitle = request.getParameter("boardTitle");
		    System.out.println("boardModifyAction param boardTitle :"+boardTitle);
		    String boardContent = request.getParameter("boardContent");
		    System.out.println("boardModifyAction param boardContent :"+boardContent);
		 
		    board = new Board();
		    board.setBoardNo(boardNo);
		    board.setBoardPw(boardPw);
		    board.setBoardTitle(boardTitle);
		    board.setBoardContent(boardContent);
		    
		    boardDao = new BoardDao();
		    
		    if(boardDao.updateBoard(board)==1){
		    	response.sendRedirect(request.getContextPath()+"/board/BoardView?boardNo="+boardNo);
		    }else{
		    	response.sendRedirect(request.getContextPath()+"/board/BoardModify?boardNo="+boardNo);
		    }
		}
	}

}
