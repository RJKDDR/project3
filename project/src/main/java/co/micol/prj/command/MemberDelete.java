package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.comm.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class MemberDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		//HttpSession session = request.getSession();
		request.setAttribute("member", vo.getId());
		vo.setId(request.getParameter("id"));
		
		System.out.println(vo.getId());
		
		int r = memberDao.memberDelete(vo);
		if(r != 0) {
			request.setAttribute("message", "정상적으로 회원탈퇴가 되었습니다");
			//session.setAttribute("id", vo.getId());
			return "main.do";
		}else {
			request.setAttribute("message", "회원탈퇴가 되지 않았습니다");
			
		
		}
		
		
		return "member/memberDeleteResult";
	}

}
