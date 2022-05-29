package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "community")
public class Community {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="community_number")
    Integer communityNumber;

    @Column(length = 1000, name="community_title")
    String communityTitle;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(name="community_date")
    Date communityDate;
    @Column(length = 3000, name="community_content")
    String communityContent;
    @Column(name="community_like")
    Integer communityLike; // 게시글 좋아요
    @Column(name="community_hits")
    Integer communityHits; // 게시글 조회수

    @Column(name="community_state")
    Integer communityState; // 게시글 상태

    @Column(length = 100, name="community_category")
    String communityCategory; // 게시글 카테고리

    @OneToMany // 1:다
    @JoinColumn(name="community_number")
    private List<Comments> comments;

    @OneToMany // 1:다
    @JoinColumn(name="community_number")
    private List<Report> report;
}
