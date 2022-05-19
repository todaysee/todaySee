package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "commentscomments")
public class CommentsComments {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer commentscomments_number;

    String commentscomments_content;
    Integer commentscomments_like;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date commentscomments_date;

    @ManyToOne
    @JoinColumn(name="comments_number")
    private Comments comments;

}
