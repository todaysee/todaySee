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
    @Column(name="contentott_number")
    Integer contentottNumber;

    @Column(length = 3000,name="contentott_link")
    String contentottLink;

    @OneToOne
    @JoinColumn(name = "ott_number")
    private Ott ott;
}
