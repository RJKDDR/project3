package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.board.vo.BoardVO;
import co.micol.prj.board.vo.ReplyVO;
import co.micol.prj.comm.Command;

public class ReplyWrite implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardDAO = new BoardServiceImpl();
		BoardVO vo2 = new BoardVO();
		ReplyVO vo = new ReplyVO();
		request.setAttribute("reply", vo);
		
		vo2.setBIdx(Integer.valueOf(request.getParameter("boardId")));
		vo.setReWriter(request.getParameter("replyWriter"));
		vo.setReContent(request.getParameter("replyContent"));
		vo.setBIdx(Integer.valueOf(request.getParameter("replyIdx")));
		
		
		int n = boardDAO.replyInsert(vo);
		
		String viewPage = null;
		if(n != 0) {
			viewPage = "boardSelect.do"; 
		} else {
			request.setAttribute("message", "댓글입력이 실패했습니다");
			viewPage = "board/boardError";
		}
		return viewPage;
	}

}
