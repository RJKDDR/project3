package co.micol.prj.board.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ReplyVO {
	private int replyId;
	private String reWriter;
	private String reContent;
	private Date reDate;
	private int bIdx;
	
}
