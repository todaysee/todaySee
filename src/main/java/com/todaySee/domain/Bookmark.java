package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "bookmark")
public class Bookmark {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer bookmark_number;

    Integer bookmark_state;
    String bookmark_name;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date bookmark_date;

    @ManyToOne
    @JoinColumn(name="user_number")
    private User user;

    @ManyToOne
    @JoinColumn(name="content_number")
    private Content content;
}
