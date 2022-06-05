package com.todaySee.persistence;

import com.todaySee.domain.Bookmark;
import com.todaySee.domain.Content;
import com.todaySee.domain.UserVO;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BookmarkRepository extends CrudRepository<Bookmark, Integer> {

    // 유저 정보로 즐겨찾기 리스트 찾아오기
    List<Bookmark> findByUserAndBookmarkStateNotAndContentIsNull(UserVO user, Integer bookmarkState);

    // 유저 정보와 북마크 번호로 즐겨찾기에 담긴 컨텐츠 가져오기
    List<Bookmark> findByUserAndBookmarkStateAndBookmarkName(UserVO user, Integer bookmarkState, String bookmarkName);

}
