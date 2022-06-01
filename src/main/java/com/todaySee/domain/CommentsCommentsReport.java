package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "commentscommentsreport")
public class CommentsCommentsReport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "comments_comments_repoart_number")
    Integer commentsCommentsReportNumber;

    @Column(length = 3000, name="comments_comments_report_content")
    String commentsCommentsReportContent;

    @Column(name = "comments_comments_report_state")
    Integer commentsCommentsReportState;

    @CreationTimestamp
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "comments_comments_report_date")
    Date commentsCommentsReportDate;

    @ManyToOne // 다:1
    @JoinColumn(name="user_number")
    private UserVO user;

    @ManyToOne // 다:1
    @JoinColumn(name="comments_comments_number")
    private CommentsComments commentsComments;

}
