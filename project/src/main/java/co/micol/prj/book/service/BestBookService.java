package co.micol.prj.book.service;

import java.util.List;

import co.micol.prj.book.vo.BookVO;


public interface BestBookService {
	List<BookVO> bookSelectList();
	BookVO bookSelect(BookVO vo); 
	int bookInsert(BookVO vo); 
	int bookUpdate(BookVO vo);
	int bookDelete(BookVO vo);
	
	//boolean isIdCheck(String id);
	
}
