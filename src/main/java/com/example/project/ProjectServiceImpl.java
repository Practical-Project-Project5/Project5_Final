package com.example.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    ProjectDAO projectDAO;

    @Override
    public int insertProject(ProjectVO vo) {
        return projectDAO.insertProject(vo);
    }

    @Override
    public int deleteProject(int seq) {
        return projectDAO.deleteProject(seq);
    }

    @Override
    public int updateProject(ProjectVO vo) {
        return projectDAO.updateProject(vo);
    }

    @Override
    public ProjectVO getProject(int seq) {
        return projectDAO.getProject(seq);
    }

    @Override
    public List<ProjectVO> getProjectList() {
        return projectDAO.getProjectList();
    }
}
