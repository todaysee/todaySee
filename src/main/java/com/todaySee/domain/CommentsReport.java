package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "commentsreport")
public class CommentsReport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "comments_report_number")
    Integer commentsReportNumber;

    @Column(length = 3000, name="comments_report_content")
    String commentsReportContent;

    @Column(name = "comments_report_state")
    Integer commentsReportState;

    @CreationTimestamp
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "comments_report_date")
    Date commentsReportDate;

    @ManyToOne // 다:1
    @JoinColumn(name="user_number")
    private UserVO user;

    @ManyToOne // 다:1
    @JoinColumn(name="comments_number")
    private Comments comments;

}
