package com.example.project;

import java.util.List;
public interface ProjectService {
    public int insertBoard(ProjectVO vo);
    public int deleteBoard(int seq);
    public int updateBoard(ProjectVO vo);
    public ProjectVO getBoard(int seq);
    public List<ProjectVO> getBoardList();
}
