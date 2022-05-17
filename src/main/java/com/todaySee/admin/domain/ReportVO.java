package com.todaySee.admin.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.CreationTimestamp;
import lombok.Data;


@Data
@Entity
@Table(name="Report")
public class ReportVO {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userReportNumber;
	
	private String userReportContent;
	
	@CreationTimestamp
	@Temporal(TemporalType.DATE)	// date형식에 시분초 뺼려고
	private Date userReportDate;
	
	@ManyToOne
	@JoinColumn(name="userNumver")
	private test1 Number;
	
	private String reportOppo;
	
	
	
	
}
