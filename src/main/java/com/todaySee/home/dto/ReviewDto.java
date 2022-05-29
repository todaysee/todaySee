package com.todaySee.home.dto;

import com.todaySee.domain.Content;
import com.todaySee.domain.Report;
import com.todaySee.domain.UserVO;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "review")
public class ReviewDto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "review_number")
    Integer reviewNumber;

    @Column(length = 3000, name = "review_content")
    String reviewContent;

    @CreationTimestamp
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "review_date")
    Date reviewDate;
    @Column(name = "review_like")
    Integer reviewLike;
    @Column(name = "review_spoiler")
    Integer reviewSpoiler;


    @ManyToOne // 다:1
    @JoinColumn(name="user_number")
    private UserVO user;

    @ManyToOne // 다:1
    @JoinColumn(name="content_number")
    private Content content;



    @OneToMany // 1:다
    @JoinColumn(name="review_number")
    private List<Report> report;

}
