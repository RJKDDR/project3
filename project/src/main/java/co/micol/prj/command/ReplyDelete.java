package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.board.vo.BoardVO;
import co.micol.prj.board.vo.ReplyVO;
import co.micol.prj.comm.Command;

public class ReplyDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String del = request.getParameter("del");
		BoardService boardDAO = new BoardServiceImpl();
		ReplyVO vo = new ReplyVO();
		
		// 삭제후 같은페이지로 가기위해 초기화
		BoardVO vo2 = new BoardVO();
		
		
		vo.setReplyId(Integer.parseInt(del));
		vo2.setBIdx(Integer.valueOf(request.getParameter("boardId")));
		int n = boardDAO.replyDelete(vo);
		
		if(n != 0) {
			return "boardSelect.do";
		} else {
			request.setAttribute("message", "댓글 삭제에 실패했습니다");
			return "board/boardError";
			
		}
		
		
	}

}
