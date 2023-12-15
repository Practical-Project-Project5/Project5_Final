package com.example.project;

import java.util.List;
public interface ProjectService {
    public int insertProject(ProjectVO vo);
    public int deleteProject(int seq);
    public int updateProject(ProjectVO vo);
    public ProjectVO getProject(int seq);
    public List<ProjectVO> getProjectList();
}
