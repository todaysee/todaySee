package com.todaySee.persistence;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.CommentsReport;
import com.todaySee.domain.CommunityReport;

public interface CommentsReportRepository extends CrudRepository<CommentsReport, Integer> {
}
