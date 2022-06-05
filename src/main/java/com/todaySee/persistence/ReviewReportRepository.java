package com.todaySee.persistence;

import com.todaySee.domain.ReviewReport;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.web.bind.annotation.PathVariable;

public interface ReviewReportRepository extends CrudRepository<ReviewReport, Integer> {
	
	@Query(value="select c.count count\r\n"
			+ "from user u inner join (select count(user_number) count , user_number\r\n"
			+ "							from reviewreport \r\n"
			+ "							where user_number = :userNumber and reivew_report_state = 0)  c\r\n"
			+ "on u.user_number = c.user_number",nativeQuery=true)
	public int reviewCount(@PathVariable Integer userNumber); 
	
}
