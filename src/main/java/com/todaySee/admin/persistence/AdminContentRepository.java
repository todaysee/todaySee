package com.todaySee.admin.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.Content;

public interface AdminContentRepository extends CrudRepository<Content, Integer>{

	@Query(value="		SELECT  distinct c.content_number content_number , c.content_age content_age , c.content_import_date content_import_date \r\n"
			+ "		, c.content_info content_info , c.content_main_images_url content_main_images_url, c.content_poster_images_url content_poster_images_url\r\n"
			+ "        , c.content_release_date content_release_date , c.content_running_time content_running_time , c.content_title content_title \r\n"
			+ "        , c.content_youtube_url content_youtube_url, cgG.genre_name genre_name , coO.ott_name ott_name, coO.contentott_link\r\n"
			+ "FROM content c left outer join (SELECT  GROUP_CONCAT(g.genre_name separator ',') AS genre_name , cg.content_number content_number\r\n"
			+ "							FROM contentgenre cg inner join genre g\r\n"
			+ "							ON cg.genre_number = g.genre_number\r\n"
			+ "							WHERE cg.content_number = :word) cgG\r\n"
			+ "ON c.content_number = cgG.content_number\r\n"
			+ "				left outer join (SELECT GROUP_CONCAT(o.ott_name separator ',') AS ott_name, co.content_number content_number , GROUP_CONCAT(co.contentott_link separator ',') contentott_link\r\n"
			+ "                            FROM contentott co inner join ott o\r\n"
			+ "							ON co.ott_number = o.ott_number\r\n"
			+ "							WHERE co.content_number = :word) coO\r\n"
			+ "ON c.content_number = coO.content_number\r\n"
			+ "WHERE c.content_number = :word	",nativeQuery = true)
	List<Object[]> adminContentDetailList(String word);




}
