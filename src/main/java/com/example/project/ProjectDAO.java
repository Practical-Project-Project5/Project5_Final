package com.example.project;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProjectDAO {

    @Autowired
    SqlSession sqlSession;
    public int insertProject(ProjectVO vo) {
        int result = sqlSession.insert("ProjectDAO.insertProject", vo);
        return result;
    }

    public int deleteProject(int seq) {
        int result = sqlSession.delete("ProjectDAO.deleteProject", seq);
        return result;
    }
    public int updateProject(ProjectVO vo) {
        int result = sqlSession.update("ProjectDAO.updateProject", vo);
        System.out.println(result);
        return result;
    }


    public ProjectVO getProject(int seq){
        ProjectVO one = sqlSession.selectOne("ProjectDAO.getProject", seq);
        return one;
    }

    public List<ProjectVO> getProjectList(){
        List<ProjectVO> list = sqlSession.selectList("ProjectDAO.getProjectList");
        return list;
    }
}
