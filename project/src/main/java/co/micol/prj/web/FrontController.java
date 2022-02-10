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
import co.micol.prj.command.BoardDelete;
import co.micol.prj.command.BoardSelect;
import co.micol.prj.command.BoardUpdate;
import co.micol.prj.command.BoardWrite;
import co.micol.prj.command.BoardWriteForm;
import co.micol.prj.command.BookList;
import co.micol.prj.command.Event;
import co.micol.prj.command.Login;
import co.micol.prj.command.LoginForm;
import co.micol.prj.command.MainCommand;
import co.micol.prj.command.MemberDelete;
import co.micol.prj.command.MemberSelect;
import co.micol.prj.command.MemberSelectList;
import co.micol.prj.command.MemberUpdateForm;
import co.micol.prj.command.MyPage;
import co.micol.prj.command.NoticeDelete;
import co.micol.prj.command.NoticeList;
import co.micol.prj.command.NoticeSelect;
import co.micol.prj.command.NoticeUpdate;
import co.micol.prj.command.NoticeUpdateForm;
import co.micol.prj.command.NoticeWrite;
import co.micol.prj.command.NoticeWriterForm;
import co.micol.prj.command.QnaList;
import co.micol.prj.command.Register;
import co.micol.prj.command.RegisterForm;
import co.micol.prj.command.ReplyDelete;
import co.micol.prj.command.ReplyWrite;


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
		
		//book
		map.put("/librarySelect.do", new BestBook()); // 인기도서
		map.put("/bestBookForm.do", new BestBookForm()); // 인기도서 메인페이지 (이미지 3개 + 더보기란)
		map.put("/bestBookInsertForm.do", new BestBookInsertForm()); //인기도서페이지에서 인기도서 테이블 페이지 이동 요청하는 command
		map.put("/bookList.do", new BookList()); // 인기도서 테이블페이지
		map.put("/bestBookDetail.do", new BestBookDetail()); // 인기도서 상세페이지
		map.put("/bestBookInsert.do", new BestBookInsert()); // 인기도서 등록(관리자만)
	
		//mypage
		map.put("/mypage.do", new MyPage());//마이페이지
		map.put("/memberUpdateForm.do", new MemberUpdateForm());//회원정보수정
		map.put("/memberDelete.do", new MemberDelete());//회원탈퇴
		map.put("/memberSelect.do", new MemberSelect()); //회원검색
		
		//Q&A
		map.put("/qnaList.do", new QnaList()); //QnA 게시판
		map.put("/boardWriteForm.do", new BoardWriteForm()); // QnA 글쓰기
		map.put("/boardWrite.do", new BoardWrite()); // QnA글쓰기 명령
		map.put("/boardSelect.do", new BoardSelect());//QnA 글 상세보기
		map.put("/boardUpdate.do", new BoardUpdate()); //QnA 글 수정
		map.put("/boardDelete.do", new BoardDelete()); //QnA 글 삭제
		map.put("/replyWrite.do", new ReplyWrite()); //QnA게시글 댓글입력
		map.put("/replyDelete.do", new ReplyDelete()); //QnA 게시글 댓글삭제
		
		//공지사항
		map.put("/notice.do", new NoticeList()); //공지사항목록
		map.put("/noticeWriterForm.do", new NoticeWriterForm()); //공지사항 등록폼
		map.put("/noticeSelect.do", new NoticeSelect()); //공지사항 보기
		map.put("/noticeWrite.do", new NoticeWrite()); //공지사항등록목록
		map.put("/noticeUpdate.do", new NoticeUpdate());
		map.put("/noticeDelete.do", new NoticeDelete());
		map.put("/noticeUpdateForm.do", new NoticeUpdateForm());
		
		
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
