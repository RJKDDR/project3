package co.micol.prj.board.service;

import java.util.List;

import co.micol.prj.board.vo.BoardVO;

public interface BoardMapper {
	List<BoardVO> selectList();
	BoardVO boardselect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);

	void boardHit(int id);
}
