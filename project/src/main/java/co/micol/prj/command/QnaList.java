package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.comm.Command;

public class QnaList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardDAO = new BoardServiceImpl();
		request.setAttribute("boards", boardDAO.selectList());
		
		return "board/boardList";
	}

}
