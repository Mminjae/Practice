package org.scoula.board.service;

import org.scoula.board.dto.BoardDTO;

import java.util.*;

public interface BoardService {
    public List<BoardDTO> getList();

    public BoardDTO get(Long no);

    public void create(BoardDTO board);

    public boolean update(BoardDTO board);

    public boolean delete(Long no);

}
