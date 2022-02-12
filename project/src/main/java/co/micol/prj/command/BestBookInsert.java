package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.book.service.BestBookService;
import co.micol.prj.book.serviceImpl.BestBookServiceImpl;
import co.micol.prj.book.vo.BookVO;
import co.micol.prj.comm.Command;

public class BestBookInsert implements Command {

   // 웹상에서 입력된 정보를 jsp(bookList)를 거쳐 다시 command로 들어와서 DB로 요청하는 부분
   // 도서입력정보를 DB에 보냄.

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {

      BestBookService bookDao = new BestBookServiceImpl();

      BookVO vo = new BookVO();
      vo.setBookName(request.getParameter("bookName"));   // bestBookForm 에서 parameter로 input타입의 name의 값을 불러온다.
      vo.setBookWriter(request.getParameter("bookWriter"));
      vo.setBookCompany(request.getParameter("bookCompany"));
      vo.setBookStory(request.getParameter("bookStory"));
      vo.setBookImage(request.getParameter("bookImage"));
      System.out.println(vo.getBookStory());
      int n = bookDao.bookInsert(vo);

      String viewPage = null;

      if (n != 0) {
         viewPage = "bookList.do";
      } else {
         request.setAttribute("message", "도서 정보 등록에 실패하였습니다.");
         viewPage = "book/bookError";
      }

      return viewPage;
   }

}