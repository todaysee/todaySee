package com.todaySee.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Entity
@Table(name = "ott")
public class Ott {

    @Id
    @Column(name="ott_number")
    Integer ottNumber;

    @Column(length = 1000,name="ott_name")
    String ottName;
}
