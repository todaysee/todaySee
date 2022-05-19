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
    Integer report_number;

    String report_target;
    @Column(length = 3000)
    String report_content;

    Integer report_state;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date report_date;

}
