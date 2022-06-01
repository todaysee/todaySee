package com.todaySee.persistence;

import com.todaySee.domain.CommunityReport;
import org.springframework.data.repository.CrudRepository;

public interface CommunityReportRepository extends CrudRepository<CommunityReport, Integer> {
}
