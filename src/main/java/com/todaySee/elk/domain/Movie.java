package com.todaySee.elk.domain;

import java.util.List;

import org.springframework.data.elasticsearch.annotations.Field;

import lombok.Data;

@Data
public class Movie {
	
	private String id;
	
	private String content_title;
	
 	private String content_info;
 	
	private String contentott_link;
	
	private int content_release_date;
	
	
	private String content_age;
	
	private String content_running_time;
	
	private Object[] genre_name;
	
	private Object[] ott_name;
	
	private String content_poster_images_url;
	
	private String content_main_images_url;
	
	private String content_youtube_url;
	
	

	

	
	
	
}


