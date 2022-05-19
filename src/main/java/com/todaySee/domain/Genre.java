package com.todaySee.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Entity
@Table(name = "genre")
public class Genre {

    @Id
    Integer genre_number;

    @Column(length = 1000)
    String genre_name;
}
