package com.todaySee.persistence;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.Content;
import com.todaySee.domain.ContentOtt;

public interface ContentRepository extends CrudRepository<Content, Integer>{
	
	
	/** 장르별 컨텐츠 화면에 출력
	 * @param genreNumber (장르 번호)
	 * @return Page<Content>
	 * 			- 장르 번호에 따른 컨텐츠 정보를 List로 담음
	 * 			- 페이징 추가
	 */
	@Query(nativeQuery = true
			,value="SELECT c.* FROM contentgenre cg INNER JOIN content c ON c.content_number = cg.content_number INNER JOIN genre g ON g.genre_number = cg.genre_number WHERE cg.genre_number =?1 AND c.content_main_images_url <> 'none Main img'"
			,countQuery = "SELECT c.* FROM contentgenre cg INNER JOIN content c ON c.content_number = cg.content_number INNER JOIN genre g ON g.genre_number = cg.genre_number WHERE cg.genre_number =?1 AND c.content_main_images_url <> 'none Main img'")
	Page<Content> getGenresContentList(Integer genreNumber, Pageable paging);
	
	
	/**	신작 콘텐츠 출력
	 * 		- homeIndex에 출력할 최신 콘텐츠 검색하여 리스트에 담기
	 * 		- contentReleaseDate의 내림차순으로 상위 5개 출력
	 * @return List<Content>
	 */
	@Query(nativeQuery = true
			,value="SELECT DISTINCT c.* FROM contentgenre cg INNER JOIN content c ON c.content_number = cg.content_number INNER JOIN genre g ON g.genre_number = cg.genre_number WHERE c.content_poster_images_url<>'none Main img' ORDER BY c.content_release_date DESC LIMIT 44,5")
	List<Content> newContent();

	/** 랜덤 장르 콘텐츠 10개씩 출력
	 * 		- homeIndex에 출력할 장르별 콘텐츠 검색하여 리스트에 담기
	 * @param genreNumber
	 * @return List<Content>
	 */
	@Query(nativeQuery = true
			,value="SELECT c.* FROM contentgenre cg INNER JOIN content c ON c.content_number = cg.content_number INNER JOIN genre g ON g.genre_number = cg.genre_number WHERE c.content_poster_images_url<>'none Main img' AND cg.genre_number =?1 order by rand() LIMIT 10")
	List<Content> genresContentList(Integer genreNumber);
	
	/** 랜덤 ott 10개씩 출력
	 * 		- homeIndex에 출력할 ott별 콘텐츠 검색하여 리스트에 담기
	 * @param ottNumber
	 * @return List<Content>
	 */
	@Query(nativeQuery = true
			,value="select c.* from content c "
					+ "		inner join contentott ct on c.content_number = ct.content_number "
					+ "		inner join contentgenre cg on c.content_number = cg.content_number "
					+ "     inner join genre g on cg.genre_number = g.genre_number "
					+ "     where c.content_poster_images_url<>'none Main img' AND ct.ott_number =?1 order by rand() limit 10")
	List<Content> mainOttContentList(Integer ottNumber);
	
	/** 콘텐츠 리스트 랜덤으로 10개 출력
	 * 		 - 파이썬 연결이 안되어 있을 때 임시로 출력할 콘텐츠 리스트
	 * @return List<Content>
	 */
	@Query(nativeQuery = true
			,value="SELECT c.* FROM contentgenre cg INNER JOIN content c ON c.content_number = cg.content_number INNER JOIN genre g ON g.genre_number = cg.genre_number WHERE c.content_poster_images_url<>'none Main img' order by rand() LIMIT 10")
	List<Content> mainContentList();
	
	/** ott별 상세 페이지
	 * 		- homeList_ott에 출력할 ott별 콘텐츠 검색하여 리스트에 담기
	 * @param ottNumber
	 * @return List<Content>
	 */
	@Query(nativeQuery = true
			,value="select distinct c.* from content c inner join contentott ct on c.content_number = ct.content_number inner join contentgenre cg on c.content_number = cg.content_number inner join genre g on cg.genre_number = g.genre_number where c.content_main_images_url<>'none Main img' AND ct.ott_number =?1 "
			,countQuery="select distinct c.* from content c inner join contentott ct on c.content_number = ct.content_number inner join contentgenre cg on c.content_number = cg.content_number inner join genre g on cg.genre_number = g.genre_number where c.content_main_images_url<>'none Main img' AND ct.ott_number =?1 ")
	Page<Content> ottContentList(Integer ottNumber, Pageable paging);
	
	/** 마이페이지 나의 취향 - 장르 콘텐츠
	 * 		- 사용자가 선호하는 장르의 콘텐츠를 화면에 출력
	 * 		- /myPage/myPageLike에 출력할 장르 콘텐츠 검색하여 리스트에 담기
	 * @param genreNumber
	 * @return List<Content>
	 */
	@Query(nativeQuery = true
			,value="SELECT c.* FROM contentgenre cg INNER JOIN content c ON c.content_number = cg.content_number INNER JOIN genre g ON g.genre_number = cg.genre_number WHERE c.content_poster_images_url<>'none Main img' AND cg.genre_number =?1 order by rand() LIMIT 3")
	List<Content> myPageLikeContentList(Integer genreNumber);
}
