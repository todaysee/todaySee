package com.todaySee.domain;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "ratings")
public class Ratings {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="ratings_number")
    Integer ratingsNumber;

    @Column(name = "ratings_grade")
    float ratingsGrade;

    @ManyToOne
    @JoinColumn(name="user_number")
    private User user;

    @ManyToOne
    @JoinColumn(name="content_number")
    private Content content;
}
