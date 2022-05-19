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
    Integer content_number;

    @Column(length = 1000)
    String content_title;
    @Column(length = 1000)
    String content_link;
    @Column(length = 200)
    String content_age; // 연령등급
    @Column(length = 200)
    String content_running_time; // 재생시간
    @Column(length = 200)
    String content_release_date; // 등록년도
    @Column(length = 3000)
    String content_info; // 컨텐츠 소개글

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date content_import_date; // 컨텐츠 등록날짜

    @Column(length = 3000)
    String content_youtube_url; // 컨텐츠 소개영상 주소

    @Column(length = 3000)
    String content_poster_images_url; // 컨텐츠 포스터 이미지 주소

    @Column(length = 3000)
    String content_main_images_url; // 컨텐츠 메인 이미지 주소
}
