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
		
		
		vo.setMemId(request.getParameter("id"));
		vo.setMemPwd(request.getParameter("password"));
		
		vo = memberDao.memberSelect(vo);
		
		if(vo !=null) {
			session.setAttribute("id", vo.getMemId());
			session.setAttribute("author", vo.getMemAuthor());
			session.setAttribute("name", vo.getMemName());
			request.setAttribute("message", vo.getMemName() + "님 환영합니다");
		}else {
			request.setAttribute("message", "아이디 또는 패스워드가 일치하지 않습니다");
			return "member/memberLoginForm";
		}
		return "member/memberLoginResult";
	}

}
