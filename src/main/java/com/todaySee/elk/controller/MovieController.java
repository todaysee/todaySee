package com.todaySee.elk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.todaySee.domain.Content;
import com.todaySee.elk.domain.Movie;
import com.todaySee.elk.service.SearchQueryService;


@RestController
@RequestMapping("/api/movie")
public class MovieController {
	
	@Autowired
	private  SearchQueryService SearchSer;
	
	
	@GetMapping("/search/{query}")
	public ModelAndView getAllMovieSearch(
			@PathVariable final String query) {

		
		List<Movie> movieList = SearchSer.getByQuery(query);
	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/detail");
		mv.addObject("movie", movieList);
		return mv;
	}
	
}
