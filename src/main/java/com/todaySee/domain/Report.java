package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "report")
public class Report {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "report_number")
    Integer reportNumber;

    @Column(name = "report_target")
    String reportTarget;

    @Column(length = 3000, name="report_content")
    String reportContent;

    @Column(name = "report_state")
    Integer reportState;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(name = "report_date")
    Date reportDate;
    
}
