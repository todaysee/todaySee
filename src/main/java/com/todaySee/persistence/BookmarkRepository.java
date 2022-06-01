package com.todaySee.persistence;

import com.todaySee.domain.Bookmark;
import org.springframework.data.repository.CrudRepository;

public interface BookmarkRepository extends CrudRepository<Bookmark, Integer> {
}
