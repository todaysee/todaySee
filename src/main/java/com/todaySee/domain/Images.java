package com.todaySee.domain;

import java.util.Date;

public class Images {

    Integer images_number;
    String images_url;
    String images_file_name; // 원본 파일명
    String images_file_rename; // 수정된 파일명
    String images_type; // 파일의 저장위치
    Date images_upload_date; // 파일 저장날짜

    Integer user_number;
}
