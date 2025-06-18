package org.scoula.board.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.scoula.board.domain.BoardVO;

import java.util.List;

@Mapper
public interface BoardMapper {

    public List<BoardVO> getList();

    public BoardVO get(Long no);

    public void create (BoardVO board);

    public int update(BoardVO boardVO);

    public int delete(Long no);
}