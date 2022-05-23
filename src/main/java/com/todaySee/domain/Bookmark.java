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
    @Column(name="bookmark_number")
    Integer bookmarkNumber;

    @Column(name="bookmark_state")
    Integer bookmarkState;

    @Column(length = 1000, name="bookmark_name")
    String bookmarkName;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(name="bookmark_date")
    Date bookmarkDate;

    @ManyToOne
    @JoinColumn(name="user_number")
    private User user;

    @ManyToOne
    @JoinColumn(name="content_number")
    private Content content;
}
