package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.board.vo.BoardVO;
import co.micol.prj.comm.Command;

public class BoardUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardDAO = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBIdx(Integer.valueOf(request.getParameter("boardId")));
		vo.setBTitle(request.getParameter("boardTitle"));
		vo.setBContent(request.getParameter("boardContent"));
		
		System.out.println(vo.getBIdx());
		System.out.println(vo.getBTitle());
		System.out.println(vo.getBContent());
		int n = boardDAO.boardUpdate(vo);
		if(n > 0 ) {
			return "qnaList.do";
		}else {
			request.setAttribute("message", "글 수정을 실패했습니다");
			return "board/boardError";
		}
		
		
	}

}
