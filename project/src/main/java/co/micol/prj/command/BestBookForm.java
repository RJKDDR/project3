package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.book.service.BestBookService;
import co.micol.prj.book.serviceImpl.BestBookServiceImpl;
import co.micol.prj.book.vo.BookVO;
import co.micol.prj.comm.Command;

public class BestBookForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//글등록
		BestBookService bookDao = new BestBookServiceImpl();
		
		BookVO vo = new BookVO();
		vo.setBookName(request.getParameter("bookName"));
		vo.setBookWriter(request.getParameter("bookWriter"));
		vo.setBookStory(request.getParameter("bookStory"));
		vo.setBookImage(request.getParameter("bookImage"));
		
		String viewPage = null;
		
		int n = bookDao.bookInsert(vo);
		if(n != 0) {
			viewPage = "book/bestBookForm";
		}else {
			request.setAttribute("message", "도서 정보 등록에 실패하였습니다.");
			viewPage = "book/bookError";
			
		}
		
		return "book/bestBookForm";
	}

}
