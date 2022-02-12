package co.micol.prj.book.vo;

import lombok.Getter; 
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BookVO {
	private int bookNo;
	private String bookName; 
	private String bookWriter;
	private String bookCompany;
	private String bookStory;
	private String bookImage;
}
