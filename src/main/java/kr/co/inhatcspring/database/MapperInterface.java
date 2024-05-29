package kr.co.inhatcspring.database;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.inhatcspring.beans.DataBean;

public interface MapperInterface {	
	// 현재 존재하는 게시글 조회
    @Select("SELECT * FROM community_table WHERE available = 1 and category = #{category} order by idx desc")
    List<DataBean> selectAll(int category);
    
    // 선택한 게시글 조회
    @Select("SELECT * FROM community_table WHERE available = 1 and idx = #{idx}")
    DataBean selectBoard(int idx);

    // 게시글 작성
    @Insert("INSERT INTO community_table (title, content, userID, category) VALUES (#{title}, #{content}, #{userID}, #{category})")
    void insertData(DataBean dataBean);

    // 게시글 수정
    @Update("UPDATE community_table SET title = #{title}, content = #{content} WHERE idx = #{idx}")
    int updateData(DataBean dataBean);

    // 조회수 증가
    @Update("UPDATE community_table SET viewC = viewC + 1 WHERE idx = #{idx}")
    int increViewC(int idx);

    // 게시글 논리 삭제 (0:삭제, 1:존재)
    @Update("UPDATE community_table SET available = 0 WHERE idx = #{idx}")
    int deleteData(int idx);
	
}
