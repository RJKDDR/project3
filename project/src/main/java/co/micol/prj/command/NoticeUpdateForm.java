package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.comm.Command;
import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.serviceImpl.NoticeServiceImpl;
import co.micol.prj.notice.vo.NoticeVO;

public class NoticeUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		System.out.println(request.getParameter("id"));
		vo.setNoticeId(Integer.valueOf(request.getParameter("id")));
		vo = noticeDao.noticeSelect(vo);
		
		String viewPage = null;
		if(vo != null) {
			noticeDao.noticeHitUpdate(vo.getNoticeId());
			request.setAttribute("notice", vo);
			viewPage = "notice/noticeUpdateForm";
		}else {
			request.setAttribute("message", "조회된 데이터가 없습니다");
			viewPage = "notice/noticeError";
		}
		return viewPage;
	}

}
