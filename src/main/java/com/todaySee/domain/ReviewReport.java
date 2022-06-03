package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "reviewreport")
public class ReviewReport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reivew_report_number")
    Integer reviewReportNumber;

    @Column(length = 3000, name="reivew_report_content")
    String reviewReportContent;

    @Column(name = "reivew_report_state")
    Integer reviewReportState;

    @CreationTimestamp
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "reivew_report_date")
    Date reviewReportDate;

    @ManyToOne // 다:1
    @JoinColumn(name="user_number")
    private UserVO user;

    @ManyToOne // 다:1
    @JoinColumn(name="review_number")
    private Review review;

}
