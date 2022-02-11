package co.micol.prj.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.comm.Command;
import co.micol.prj.command.Logout;
import co.micol.prj.command.BestBook;
import co.micol.prj.command.BestBookDetail;
import co.micol.prj.command.BestBookForm;
import co.micol.prj.command.BestBookInsert;
import co.micol.prj.command.BestBookInsertForm;
import co.micol.prj.command.BookList;
import co.micol.prj.command.Event;
import co.micol.prj.command.Login;
import co.micol.prj.command.LoginForm;
import co.micol.prj.command.MainCommand;
import co.micol.prj.command.NoticeList;
import co.micol.prj.command.NoticeSelect;
import co.micol.prj.command.NoticeWrite;
import co.micol.prj.command.NoticeWriterFrom;
import co.micol.prj.command.Register;
import co.micol.prj.command.RegisterForm;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private HashMap<String, Command> map = new HashMap<String, Command>();;   
   
    public FrontController() {
        super();
    }

	
	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new MainCommand()); //메인페이지
		map.put("/loginForm.do", new LoginForm());//로그인페이지
		map.put("/registerForm.do", new RegisterForm());//회원가입페이지
		map.put("/login.do", new Login());//로그인
		map.put("/logOut.do", new Logout());//로그아웃
		map.put("/register.do", new Register());//회원가입
		map.put("/event.do", new Event());//문화행사
		map.put("/notice.do", new NoticeList()); //공지사항목록
		map.put("/noticeWriteForm.do", new NoticeWriterFrom());
		map.put("/noticeSelect.do", new NoticeSelect());
		map.put("/noticeWrite.do", new NoticeWrite());
		
		map.put("/librarySelect.do", new BestBook()); // 인기도서
		map.put("/bestBookForm.do", new BestBookForm()); // 인기도서 메인페이지 (이미지 3개 + 더보기란)
		map.put("/bestBookInsertForm.do", new BestBookInsertForm()); //인기도서페이지에서 인기도서 테이블 페이지 이동 요청하는 command
		map.put("/bookList.do", new BookList()); // 인기도서 테이블페이지
		map.put("/bestBookDetail.do", new BestBookDetail()); // 인기도서 상세페이지
		map.put("/bestBookInsert.do", new BestBookInsert()); // 인기도서 등록(관리자만)
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());
		
		Command command = map.get(page);
		String viewPage = command.exec(request, response);
		
		if(!viewPage.endsWith(".do")) {
			viewPage = viewPage + ".tiles";		
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
