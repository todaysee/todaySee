package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "community")
public class Community {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer community_number;

    @Column(length = 1000)
    String community_title;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date community_date;
    @Column(length = 3000)
    String community_content;
    Integer community_like; // 게시글 좋아요
    Integer community_hits; // 게시글 조회수

    @ManyToOne
    @JoinColumn(name="user_number")
    private User user;
}
