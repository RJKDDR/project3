package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.board.vo.BoardVO;
import co.micol.prj.board.vo.ReplyVO;
import co.micol.prj.comm.Command;

public class BoardSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardDAO = new BoardServiceImpl();
		// 게시판 
		BoardVO vo = new BoardVO();
		vo.setBIdx(Integer.valueOf(request.getParameter("boardId")));
		vo = boardDAO.boardselect(vo);
		
		//댓글 보여주기 기능 list
		request.setAttribute("replys", boardDAO.replyList());
		
		if(vo != null) {
			boardDAO.boardHit(vo.getBIdx());
			request.setAttribute("board", vo);
		}else {
			request.setAttribute("message", "조회된 데이터가 없습니다");
			return "board/boardError";
		}
		
		return "board/boardSelect";
	}

}
