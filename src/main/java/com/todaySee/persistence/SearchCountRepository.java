package com.todaySee.persistence;

import com.todaySee.domain.SearchCount;
import org.springframework.data.repository.CrudRepository;

public interface SearchCountRepository extends CrudRepository<SearchCount, Integer> {
}
