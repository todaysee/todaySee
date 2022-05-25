package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "review")
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "review_number")
    Integer reviewNumber;

    @Column(length = 3000, name = "review_content")
    String reviewContent;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(name = "review_date")
    Date reviewDate;
    @Column(name = "review_like")
    Integer reviewLike;
    @Column(name = "review_spoiler")
    Integer reviewSpoiler;

}
