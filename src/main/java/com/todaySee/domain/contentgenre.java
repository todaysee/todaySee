package com.todaySee.domain;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "contentgenre")
public class ContentGenre {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer contentgenre_number;

    @ManyToOne
    @JoinColumn(name="content_number")
    private Content content;

    @ManyToOne
    @JoinColumn(name="genre_number")
    private Genre genre;

}
