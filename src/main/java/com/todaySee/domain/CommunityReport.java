package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "communityreport")
public class CommunityReport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "community_repoart_number")
    Integer communityReportNumber;

    @Column(length = 3000, name="community_report_content")
    String communityReportContent;

    @Column(name = "community_report_state")
    Integer communityReportState;

    @CreationTimestamp
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "community_report_date")
    Date communityReportDate;

    @ManyToOne // 다:1
    @JoinColumn(name="user_number")
    private UserVO user;

    @ManyToOne // 다:1
    @JoinColumn(name="community_number")
    private Community community;

}
