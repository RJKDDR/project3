package co.micol.prj.board.service;

import java.util.List;

import co.micol.prj.board.vo.BoardVO;
import co.micol.prj.board.vo.ReplyVO;

public interface BoardService {
	List<BoardVO> selectList();
	BoardVO boardselect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);
	
	void boardHit(int id); //ㅈ조회수
	
	//댓글관련 인터페이스
	List<ReplyVO> replyList();
	int replyInsert(ReplyVO vo);
	int replyUpdate(ReplyVO vo);
	int replyDelete(ReplyVO vo);
}
