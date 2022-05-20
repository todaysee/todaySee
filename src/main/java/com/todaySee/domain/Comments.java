package com.todaySee.domain;

import lombok.Builder;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "comments")
public class Comments {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer comments_number;

    @Column(length = 3000)
    String comments_content;
    Integer comments_like;


    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date comments_date;

    @ManyToOne
    @JoinColumn(name="community_number")
    private Community community;

}
