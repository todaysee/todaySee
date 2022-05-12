package com.todaySee.service.image;



import com.todaySee.domain.image.ImageVO;

import java.util.List;

public interface ImageService {
    // 이미지 전체 검색
    public List<ImageVO> getImageList(ImageVO vo);
    // 이미지 입력
    public void insertImage(ImageVO vo);

}
