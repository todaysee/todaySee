package com.todaySee.admin.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.Content;

public interface AdminContentRepository extends CrudRepository<Content, Integer>{

	
	@Query(value="INSERT INTO content (content_title,content_running_time,content_age,content_release_date,content_info,content_youtube_url,content_poster_images_url,content_main_images_url  ) VALUES ( values ); ", nativeQuery= true)
	List<Object[]> contentQuery(Content c);
	
	@Query(value="INSERT INTO contentgenre (genre_number,content_number) VALUES (:genre ,(SELECT max(last_insert_id(content_number)) FROM content))",nativeQuery=true)
	List<Object[]> genreQuery(String genre);

	@Query(value="INSERT INTO contentott (ott_number, content_number) VALUES (:ott ,SELECT max(last_insert_id(content_number)) FROM content))",nativeQuery=true)
	List<Object[]> ottQuery(String ott, String contentottLink);

}
