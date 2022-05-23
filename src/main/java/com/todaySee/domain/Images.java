package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "images")
public class Images {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "images_number")
    Integer imagesNumber;

    @Column(name = "images_url", length = 3000)
    String imagesUrl;
    @Column(name = "images_file_name", length = 3000)
    String imagesFileName; // 원본 파일명
    @Column(name = "images_file_rename", length = 3000)
    String imagesFileRename; // 수정된 파일명
    @Column(name = "images_type", length = 1000)
    String imagesType; // 파일의 저장위치

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(name = "images_upload_date")
    Date imagesUploadDate; // 파일 저장날짜

}
