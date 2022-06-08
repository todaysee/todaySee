package com.todaySee.persistence;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.Content;

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
	
	/** 사용자 추천 콘텐츠 화면에 출력
	 * @param contentNumber (컨텐츠 번호)
	 * @return List<Content> 
	 */
	@Query(nativeQuery = true
			,value="SELECT c.* FROM contentgenre cg INNER JOIN content c ON c.content_number = cg.content_number INNER JOIN genre g ON g.genre_number = cg.genre_number WHERE c.content_number =?1")
	Content selectContent(Integer contentNumber);
	
	/**	신작 콘텐츠 출력
	 * 		- homeIndex에 출력할 최신 콘텐츠 검색하여 리스트에 담기
	 * 		- contentReleaseDate의 내림차순으로 상위 5개 출력
	 * @return List<Content>
	 */
	@Query(nativeQuery = true
			,value="SELECT DISTINCT c.* FROM contentgenre cg INNER JOIN content c ON c.content_number = cg.content_number INNER JOIN genre g ON g.genre_number = cg.genre_number ORDER BY c.content_release_date DESC LIMIT 50,5")
	List<Content> newContent();

	/** 랜덤 장르 콘텐츠 10개씩 출력
	 * 		- homeIndex에 출력할 장르별 콘텐츠 검색하여 리스트에 담기
	 * @param genreNumber
	 * @return List<Content>
	 */
	@Query(nativeQuery = true
			,value="SELECT c.* FROM contentgenre cg INNER JOIN content c ON c.content_number = cg.content_number INNER JOIN genre g ON g.genre_number = cg.genre_number WHERE c.content_main_images_url<>'none Main img' AND cg.genre_number =?1 order by rand() LIMIT 10")
	List<Content> genresContentList(Integer genreNumber);
	
	/** 랜덤 ott 10개씩 출력
	 * 		- homeIndex에 출력할 ott별 콘텐츠 검색하여 리스트에 담기
	 * @param ottNumber
	 * @return List<Content>
	 */
	@Query(nativeQuery = true
			,value="select c.* from contentott ct inner join content c on c.content_number = ct.content_number inner join ott o on o.ott_number = ct.ott_number where c.content_main_images_url<>'none Main img' AND ct.ott_number =?1 order by rand() limit 10")
	List<Content> ottContentList(Integer ottNumber);
}
