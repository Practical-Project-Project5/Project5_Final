package com.example.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    ProjectDAO projectDAO;

    @Override
    public int insertBoard(ProjectVO vo) {
        return projectDAO.insertBoard(vo);
    }

    @Override
    public int deleteBoard(int seq) {
        return projectDAO.deleteBoard(seq);
    }

    @Override
    public int updateBoard(ProjectVO vo) {
        return projectDAO.updateBoard(vo);
    }

    @Override
    public ProjectVO getBoard(int seq) {
        return projectDAO.getBoard(seq);
    }

    @Override
    public List<ProjectVO> getBoardList() {
        return projectDAO.getBoardList();
    }
}
