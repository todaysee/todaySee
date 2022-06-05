package com.todaySee.persistence;

import com.todaySee.domain.CommentsCommentsReport;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.web.bind.annotation.PathVariable;

public interface CommentsCommentsReportRepository extends CrudRepository<CommentsCommentsReport, Integer> {
	
	@Query(value="select c.count count\r\n"
			+ "from user u inner join (select count(user_number) count , user_number\r\n"
			+ "							from commentscommentsreport \r\n"
			+ "							where user_number = :userNumber and comments_comments_report_state = 0)  c\r\n"
			+ "on u.user_number = c.user_number",nativeQuery=true)
	public int coCommentsCount(@PathVariable Integer userNumber); 
}
