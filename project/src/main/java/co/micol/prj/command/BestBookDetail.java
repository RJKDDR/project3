package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.book.service.BestBookService;
import co.micol.prj.book.serviceImpl.BestBookServiceImpl;
import co.micol.prj.book.vo.BookVO;
import co.micol.prj.comm.Command;

public class BestBookDetail implements Command {

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {

      BestBookService selectOneDao = new BestBookServiceImpl();
      
      BookVO vo = new BookVO();   
      vo.setBookName(request.getParameter("bookName"));
      vo = selectOneDao.bookSelect(vo);
      if(vo != null) {
         request.setAttribute("book", vo);
      } else {
         request.setAttribute("message", "검색된 자료 없음");
         return "book/bookError";
      }
      
      return "book/bestBookDetail";
   }

}
