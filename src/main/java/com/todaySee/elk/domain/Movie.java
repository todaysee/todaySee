package com.todaySee.elk.domain;

import java.util.List;

import org.springframework.data.elasticsearch.annotations.Field;

import lombok.Data;

@Data
public class Movie {
	
	private String id;
	
	private String title;
	
 	private String content;
 	
	private String link;
	
	private int open;
	
	
	private String ageRange;
	
	private String runningTime;
	
	private Object[] gerne;
	
	private Object[] platform;

	

	
	
	
}


