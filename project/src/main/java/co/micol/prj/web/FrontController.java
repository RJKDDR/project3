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
import co.micol.prj.command.Event;
import co.micol.prj.command.Login;
import co.micol.prj.command.LoginForm;
import co.micol.prj.command.MainCommand;
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
