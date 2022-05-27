package com.todaySee.domain;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "contentgenre")
public class ContentGenre {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="contentgenre_number")
    Integer contentgenreNumber;

    @OneToOne
    @JoinColumn(name = "genre_number")
    private Genre genre;

}
