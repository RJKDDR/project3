package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.comm.Command;

public class MyPage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "member/memberMyPage";
	}

}
