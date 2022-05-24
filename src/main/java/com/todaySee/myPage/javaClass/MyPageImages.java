package com.todaySee.myPage.javaClass;

import com.todaySee.domain.Images;
import com.todaySee.myPage.persistence.MyPageImgRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.List;

public class MyPageImages {

    /**
     * 컨트롤러에서 List<Object[]> 받아와서
     * for 문을 사용하여 Images domain에 값을 입력하여
     * resultData 로 리턴함
    * */
    public static List<Object[]> tittleImages(List<Object[]> result){
        List resultData = new ArrayList<Images>();
        for(Object[] obj : result) {
            Images images = new Images();
            images.setImagesUrl((String) obj[0]);
            resultData.add(images);
        }
        return resultData;
    }

    public static List<Object[]> profileImages(List<Object[]> result){
        List resultData = new ArrayList<Images>();
        for(Object[] obj : result) {
            Images images = new Images();
            images.setImagesUrl((String) obj[0]);
            resultData.add(images);
        }
        return resultData;
    }
}
