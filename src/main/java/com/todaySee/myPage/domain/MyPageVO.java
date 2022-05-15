package com.todaySee.myPage.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity // 실제 DB테이블과 매칭되는 클래스
@Table(name = "content")
public class MyPageVO {

    @Id
    private Integer contentNumber;

    private String contentTitle;

    @Column(unique = true)
    private String contentLink;

    private String contentPosterImgLink;
    private String contentMainImgLink;
    private String contentYoutube;
    private String contentReleaseDate;
    private String contentInfo;
    private String contentAge;
    private String contentRunningTime;
    private String contentGenre;
    private String contentOttList;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    private Date contentImportDay;

}
