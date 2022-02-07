package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.comm.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class Register implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemId(request.getParameter("id"));
		vo.setMemPwd(request.getParameter("password"));
		vo.setMemName(request.getParameter("name"));
		vo.setMemTel(request.getParameter("tel"));
		vo.setMemAddress(request.getParameter("address"));
		vo.setMemAuthor(request.getParameter("author"));
		
		int r = memberDao.memberInsert(vo);
		
		if(r != 0) {
			request.setAttribute("message", "회원가입을 환영 합니다");
		}else {
			request.setAttribute("message", "회원가입에 실패 했습니다");
		}	
		return "member/memberRegisterResult";
	}

}
