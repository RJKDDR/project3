package co.micol.prj.board.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int bIdx;
	private String bWriter;
	private String bTitle;
	private String bContent;
	private Date bDate;
	private int bHit;
}
