package com.todaySee.persistence;

import com.todaySee.domain.Bookmark;
import com.todaySee.domain.UserVO;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BookmarkRepository extends CrudRepository<Bookmark, Integer> {

    // 유저 정보로 즐겨찾기 리스트 찾아오기
    List<Bookmark> findByUser(UserVO user);

}
