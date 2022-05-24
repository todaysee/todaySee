package com.todaySee.myPage.persistence;

import com.todaySee.domain.Images;
import com.todaySee.domain.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MyPageImgRepository extends CrudRepository<Images, Integer> {
    
    //유저의 배경이미지를 가져오기 위한 SQL 문장
    // 유저번호와 이미지의 타입을 확인하고 그 중에서 마지막에 올라온 이미지를 사용함
    @Query(value = "SELECT images_url FROM images WHERE user_number=:user_number AND images_type='profileTittleImages' ORDER BY images_upload_date DESC LIMIT 1",nativeQuery = true)
    List<Object[]> profileTittleImages(Integer user_number);
    // 유저번호와 이미지의 타입을 확인하고 그 중에서 마지막에 올라온 이미지를 사용함
    @Query(value = "SELECT images_url FROM images WHERE user_number=:user_number AND images_type='profileImages' ORDER BY images_upload_date DESC LIMIT 1",nativeQuery = true)
    List<Object[]> profileImages(Integer user_number);

}
