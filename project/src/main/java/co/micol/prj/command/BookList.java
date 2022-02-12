package co.micol.prj.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.book.service.BestBookService;
import co.micol.prj.book.serviceImpl.BestBookServiceImpl;
import co.micol.prj.book.vo.BookVO;
import co.micol.prj.comm.Command;

public class BookList implements Command {

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {
      BestBookService bestBookServiceDao = new BestBookServiceImpl();
      List<BookVO> list =  bestBookServiceDao.bookSelectList();
      
      request.setAttribute("books", list);
      
      return "book/bookList";
      
   }

}