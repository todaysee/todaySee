package com.todaySee.admin.persistence;

import java.util.HashMap;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.todaySee.domain.Content;

@EnableJpaRepositories
public interface AdminContentRepository extends CrudRepository<Content, Integer>{

	
//	@Query(value="INSERT INTO content (content_title,content_running_time,content_age,content_release_date,content_info,content_youtube_url,content_poster_images_url,content_main_images_url  ) VALUES ( values ); ", nativeQuery= true)
//	List<Object[]> contentQuery(Content c);
	
	@Modifying
	@Query(value="INSERT INTO contentgenre (genre_number,content_number) VALUES (:genre ,(SELECT max(last_insert_id(content_number)) FROM content))",nativeQuery=true)
	void genreQuery(Integer genre);
	
	@Modifying
	@Query(value="INSERT INTO contentott (ott_number, content_number,contentott_link) VALUES (:ott ,(SELECT max(last_insert_id(content_number)) FROM content),:contentottLink)",nativeQuery=true)
	void ottQuery(Integer ott, String contentottLink);

	
	@Query(value="SELECT   c.content_number content_number , c.content_age content_age , c.content_import_date content_import_date\r\n"
			+ "        , c.content_info content_info , c.content_main_images_url content_main_images_url, c.content_poster_images_url content_poster_images_url\r\n"
			+ "         , c.content_release_date content_release_date , c.content_running_time content_running_time , c.content_title content_title\r\n"
			+ "         , c.content_youtube_url content_youtube_url, group_concat( distinct cgG.genre_name separator ',') genre_name , GROUP_CONCAT( distinct coO.ott_name separator ',') ott_name, GROUP_CONCAT( distinct coO.contentott_link separator ',') contentott_link\r\n"
			+ "FROM content c left outer join (SELECT  g.genre_name AS genre_name , cg.content_number content_number\r\n"
			+ "                        FROM contentgenre cg inner join genre g\r\n"
			+ "                        ON cg.genre_number = g.genre_number\r\n"
			+ "            ) cgG\r\n "
			+ "ON c.content_number = cgG.content_number\r\n "
			+ "                        left outer join (SELECT o.ott_name AS ott_name, co.content_number content_number , co.contentott_link contentott_link\r\n "
			+ "                         FROM contentott co inner join ott o\r\n"
			+ "                        ON co.ott_number = o.ott_number\r\n"
			+ "            ) coO\r\n"
			+ "ON c.content_number = coO.content_number\r\n"
			+ "group by c.content_number", nativeQuery=true)
	List<Object[]> getContent();
	

	
}
