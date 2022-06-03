package com.todaySee.persistence;

import com.todaySee.domain.CommentsComments;
import com.todaySee.domain.CommentsCommentsReport;
import org.springframework.data.repository.CrudRepository;

public interface CommentsCommentsReportRepository extends CrudRepository<CommentsCommentsReport, Integer> {
}
