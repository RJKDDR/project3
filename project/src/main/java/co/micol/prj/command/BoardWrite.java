package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.board.vo.BoardVO;
import co.micol.prj.comm.Command;

public class BoardWrite implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardDAO = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBWriter(request.getParameter("boardWriter"));
		vo.setBTitle(request.getParameter("boardTitle"));
		vo.setBContent(request.getParameter("boardContent"));
		
		String viewPage = null;
		
		int n = boardDAO.boardInsert(vo);
		if(n != 0) {
			viewPage = "qnaList.do";
		}else {
			request.setAttribute("message", "등록이 실패하엿습니다.");
			viewPage = "board/boardError";
		}
		
		return viewPage;
	}

}
