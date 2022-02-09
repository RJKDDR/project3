package co.micol.prj.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.comm.Command;
import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.serviceImpl.NoticeServiceImpl;
import co.micol.prj.notice.vo.NoticeVO;

public class NoticeUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeId(Integer.valueOf(request.getParameter("noticeId")));
				
		System.out.println(vo.getNoticeTitle());
		int n = noticeDao.noticeUpdate(vo);
		String viewPage = null;
		
		if(n != 0) {
			request.setAttribute("message", "회원정보수정이 완료되었습니다.");
			
			viewPage = "notice.do";
		}else {
			request.setAttribute("message", "회원정보수정되지 않았습니다.");
			viewPage = "notice/noticeError";
		}
		
		return viewPage;
		
	}

}
