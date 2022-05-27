package com.todaySee.domain;

import lombok.Builder;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "comments")
public class Comments {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "comments_number")
    Integer commentsNumber;

    @Column(name = "comments_content", length = 3000)
    String commentsContent;
    @Column(name = "comments_like")
    Integer commentsLike;


    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(name = "comments_date")
    Date commentsDate;

    @OneToMany // 1:다
    @JoinColumn(name="comments_number")
    private List<CommentsComments> commentsComments;

    @OneToMany
    @JoinColumn(name="comments_number")
    List<Report> report;

}
