package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.comm.Command;
import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.serviceImpl.NoticeServiceImpl;
import co.micol.prj.notice.vo.NoticeVO;

public class NoticeDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(Integer.valueOf(request.getParameter("noticeId")));
		int n = noticeDao.noticeDelete(vo);
		
		String viewPage = null;
		if(n != 0) {
			viewPage = "notice.do";
		}else {
			request.setAttribute("message", "삭제하지 못했습니다");
			viewPage = "notice/noticeError";
		}
		
		
		return viewPage;
	}

}
