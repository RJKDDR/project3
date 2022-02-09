package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.comm.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class Login implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		
		
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
		
		vo = memberDao.memberSelect(vo);
		
		if(vo !=null) {
			session.setAttribute("id", vo.getId());
			session.setAttribute("author", vo.getAuthor());
			session.setAttribute("name", vo.getName());
			session.setAttribute("tel", vo.getTel());
			session.setAttribute("address", vo.getAddress());
			session.setAttribute("password", vo.getPassword());
			
			request.setAttribute("message", vo.getName() + "님 환영합니다");
			return "member/memberLoginResult";
		}else {
			request.setAttribute("message", "아이디 또는 패스워드가 일치하지 않습니다");
			return "member/memberLoginError";
		}
	}

}
