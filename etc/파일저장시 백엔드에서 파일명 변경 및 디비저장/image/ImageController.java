package com.todaySee.controller.image;


import com.todaySee.domain.image.ImageVO;
import com.todaySee.service.image.ImageService;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;

@Controller
@RequestMapping("/admin")
public class ImageController {

    @Autowired
    ImageService imageService;


    @RequestMapping("/image")
    public void image(Model m) {
        System.out.println("image 페이지 접속");
    }


    @RequestMapping("/dbSave")
    public void imageSave (HttpServletRequest request, @RequestPart MultipartFile files) throws Exception{
        System.out.println("dbSave 통신");
        ImageVO imageVO = new ImageVO();

        String sourceFileName = files.getOriginalFilename();
        String sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase();
        String destinationFileName;
        String realUrl = "http://3.34.188.31:5000/static/";
        // mung-1은 자기 프로젝트이름으로 체인지!!
        destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + sourceFileNameExtension;

        imageVO.setImageName(sourceFileName);
        imageVO.setImageOriName(destinationFileName);
        imageVO.setImageURL(realUrl+destinationFileName);
        imageService.insertImage(imageVO);

        //return "redirect: http://3.34.188.31:5000/fileUpload"+destinationFileName;

    }


}
