package com.todaySee.persistence;

import com.todaySee.domain.Comments;
import org.springframework.data.repository.CrudRepository;

public interface CommentsRepository extends CrudRepository<Comments, Integer> {
}
