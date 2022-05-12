package com.todaySee.service.image;

import com.todaySee.domain.image.ImageVO;
import com.todaySee.persistence.image.ImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImageServiceImpl implements ImageService{

    @Autowired
    private ImageRepository imageRepository;

    @Override
    public List<ImageVO> getImageList(ImageVO vo) {
        return (List<ImageVO>)imageRepository.findAll();
    }

    @Override
    public void insertImage(ImageVO vo) {
        ImageVO imageVO = new ImageVO();
        imageVO.setImageName(vo.getImageName());
        imageVO.setImageOriName(vo.getImageOriName());
        imageVO.setImageURL(vo.getImageURL());

        imageRepository.save(vo);
    }
}
