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
    Integer ott_number;

    @Column(length = 1000)
    String ott_name;
}
