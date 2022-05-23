package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "content")
public class Content {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "content_number")
    Integer contentNumber;

    @Column(length = 1000,name = "content_title")
    String contentTitle;
    @Column(length = 1000,name = "content_link")
    String contentLink;
    @Column(length = 200,name = "content_age")
    String contentAge; // 연령등급
    @Column(length = 200,name = "content_running_time")
    String contentRunningTime; // 재생시간
    @Column(length = 200,name = "content_release_date")
    String contentReleaseDate; // 등록년도
    @Column(length = 3000,name = "content_info")
    String contentInfo; // 컨텐츠 소개글

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(name = "content_import_date")
    Date contentImportDate; // 컨텐츠 등록날짜

    @Column(length = 3000,name = "content_youtube_url")
    String contentYoutubeUrl; // 컨텐츠 소개영상 주소

    @Column(length = 3000,name = "content_poster_images_url")
    String contentPosterImagesUrl; // 컨텐츠 포스터 이미지 주소

    @Column(length = 3000,name = "content_main_images_url")
    String contentMainImagesUrl; // 컨텐츠 메인 이미지 주소
}
