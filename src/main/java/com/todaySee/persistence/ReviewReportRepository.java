package com.todaySee.persistence;

import com.todaySee.domain.ReviewReport;
import org.springframework.data.repository.CrudRepository;

public interface ReviewReportRepository extends CrudRepository<ReviewReport, Integer> {
}
