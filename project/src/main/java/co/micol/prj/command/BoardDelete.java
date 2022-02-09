package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.board.vo.BoardVO;
import co.micol.prj.comm.Command;

public class BoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardDAO = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBIdx(Integer.valueOf(request.getParameter("boardId")));
		System.out.println(vo.getBIdx());
		int n = boardDAO.boardDelete(vo);
		if(n > 0 ) {
			return "qnaList.do";
		}else {
			request.setAttribute("message", "글 삭제를 실패했습니다");
			return "board/boardError";
		}
	}

}
