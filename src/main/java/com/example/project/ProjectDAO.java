package com.example.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class ProjectDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int insertBoard(ProjectVO vo) {
        String sql = "insert into PROJECT (title, userid, username, email, githubname, intro, project, stack) values ("+"'"+vo.getTitle()+"',"+"'"+vo.getUserid()+"',"+"'"+vo.getUsername()+"',"+"'"+vo.getEmail()+"',"+"'"+vo.getGithubname()+"',"+"'"+vo.getIntro()+"',"+"'"+vo.getProject()+"',"+"'"+vo.getStack()+"')";
        return jdbcTemplate.update(sql);
    }

    public int deleteBoard(int seq) {
        String sql = "delete from PROJECT where seq = " + seq;
        return jdbcTemplate.update(sql);
    }
    public int updateBoard(ProjectVO vo) {
        String sql = "update PROJECT set userid= '" + vo.getUserid() + "', "
                + " title='" + vo.getTitle() + "', "
                + " userid='" + vo.getUserid() + "', "
                + " username='" + vo.getUsername() + "', "
                + " email='" + vo.getEmail() + "', "
                + " githubname='" + vo.getGithubname() + "', "
                + " intro='" + vo.getIntro() + "', "
                + " project='" + vo.getProject() + "', "
                + " stack='" + vo.getStack() + "' where seq=" + vo.getSeq();
        return jdbcTemplate.update(sql);
    }
    class BoardRowMapper implements RowMapper<ProjectVO> {
        @Override
        public ProjectVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            ProjectVO vo = new ProjectVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setTitle(rs.getString("title"));
            vo.setUserid(rs.getString("userid"));
            vo.setUsername(rs.getString("username"));
            vo.setEmail(rs.getString("email"));
            vo.setGithubname(rs.getString("githubname"));
            vo.setIntro(rs.getString("intro"));
            vo.setProject(rs.getString("project"));
            vo.setStack(rs.getString("stack"));
            vo.setRegdate(rs.getDate("regdate"));
            return vo;
        }
    }

    public ProjectVO getBoard(int seq){
        String sql = "select * from PROJECT where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }

    public List<ProjectVO> getBoardList(){
        String sql = "select * from PROJECT order by regdate desc";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }
}
