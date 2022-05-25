package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "commentscomments")
public class CommentsComments {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "commentscomments_number")
    Integer commentscommentsNumber;

    @Column(name = "commentscommentsContent", length = 3000)
    String commentscomments_content;
    @Column(name = "commentscomments_like")
    Integer commentscommentsLike;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(name = "commentscomments_date")
    Date commentscommentsDate;

    @OneToMany
    @JoinColumn(name="commentscomments_number")
    List<Report> report;




}
