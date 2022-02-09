package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.comm.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class MemberUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		
		vo.setId(request.getParameter("id"));
		vo.setName(request.getParameter("name"));
		vo.setPassword(request.getParameter("password"));
		vo.setTel(request.getParameter("tel"));
		vo.setAddress(request.getParameter("address"));
		
		int r = memberDao.memberUpdate(vo);
		
		if(r != 0) {
			request.setAttribute("message", "회원정보수정이 완료 되었습니다");
            session.setAttribute("id", vo.getId());
            session.setAttribute("author", vo.getAuthor());
            session.setAttribute("name", vo.getName());
            session.setAttribute("tel", vo.getTel());
            session.setAttribute("address", vo.getAddress());
            session.setAttribute("password", vo.getPassword());
            return "member/memberUpdateResult";
            
		}else {
			request.setAttribute("message", "회원정보수정이 되지 않았습니다");
		}
		
		return "member/memberUpdateResult";
	}

}
