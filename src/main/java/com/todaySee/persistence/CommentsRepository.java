package com.todaySee.persistence;

import com.todaySee.domain.Comments;
import com.todaySee.domain.UserVO;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CommentsRepository extends CrudRepository<Comments, Integer> {

    // 댓글을 작성한 유저번호와 댓글 상태에 따른 댓글 리스트 가져오기
    public List<Comments> findByUserVOAndCommentsState(UserVO user, Integer commentState);

}
