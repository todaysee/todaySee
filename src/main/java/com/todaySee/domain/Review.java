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
    Integer review_number;

    @Column(length = 3000)
    String review_content;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date review_date;
    Integer review_like;
    Integer review_spoiler;

    @ManyToOne
    @JoinColumn(name="user_number")
    private User user;

    @ManyToOne
    @JoinColumn(name="content_number")
    private Content content;
}
