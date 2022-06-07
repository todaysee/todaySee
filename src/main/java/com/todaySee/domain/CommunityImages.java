package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "communityimages")
public class CommunityImages {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "images_community_number")
    Integer imagesCommunityNumber;

    @Column(name = "images_community_url", length = 3000)
    String imagesCommunityUrl;
    @Column(name = "images_community_file_name", length = 3000)
    String imagesCommunityFileName; // 원본 파일명
    @Column(name = "images_community_file_rename", length = 3000)
    String imagesCommunityFileRename; // 수정된 파일명
    @Column
    Integer imagesCommunityState; // 0 표시하지 않음, 1 표시함

    @CreationTimestamp
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "images_community_upload_date")
    Date imagesCommunityUploadDate; // 파일 저장날짜

    @ManyToOne // 다:1
    @JoinColumn(name="community_number")
    private Community community;

}
