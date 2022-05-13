package com.todaySee.persistence.image;



import com.todaySee.domain.image.ImageVO;
import org.springframework.data.repository.CrudRepository;

public interface ImageRepository extends CrudRepository<ImageVO, Integer> {

}
