package com.todaySee.Ajax.dto;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;


// Ajax 테스트를 위한 vo생성
@Data
@Entity // Entity Class
@Table(name = "content")
public class AjaxDto {

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
