package com.todaySee.domain;

import lombok.Data;

import java.util.List;

import javax.persistence.*;

@Data
@Entity
@Table(name = "contentott")
public class ContentOtt {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer contentott_number;

    @Column(length = 3000)
    String contentott_link;

//    @ManyToOne
//    @JoinColumn(name="content_number")
//    private Content content;

    @OneToOne
    private Ott ott;
}
