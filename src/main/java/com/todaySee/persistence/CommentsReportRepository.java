package com.todaySee.persistence;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.web.bind.annotation.PathVariable;

import com.todaySee.domain.CommentsReport;
import com.todaySee.domain.CommunityReport;

public interface CommentsReportRepository extends CrudRepository<CommentsReport, Integer> {
	
	@Query(value="select c.count count\r\n"
			+ "from user u inner join (select count(user_number) count , user_number\r\n"
			+ "							from commentsreport \r\n"
			+ "							where user_number = :userNumber and comments_report_state = 0)  c\r\n"
			+ "on u.user_number = c.user_number",nativeQuery=true)
	public int commentsCount(@PathVariable Integer userNumber); 
}
