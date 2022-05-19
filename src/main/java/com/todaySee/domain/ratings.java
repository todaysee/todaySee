package com.todaySee.domain;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "ratings")
public class Ratings {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer ratings_number;
    float ratings_grade;

    @ManyToOne
    @JoinColumn(name="user_number")
    private User user;

    @ManyToOne
    @JoinColumn(name="content_number")
    private Content content;
}
