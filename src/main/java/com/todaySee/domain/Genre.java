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
    @Column(name="genre_number")
    Integer genreNumber;

    @Column(length = 1000 ,name = "genre_name")
    String genreName;
}
