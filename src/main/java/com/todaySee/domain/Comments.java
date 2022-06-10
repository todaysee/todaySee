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
    @Column(name = "comments_number")
    Integer commentsNumber;

    @Column(name = "comments_content", length = 3000)
    String commentsContent;
    @Column(name = "comments_like")
    Integer commentsLike;
    
    @Column(name="comments_state")
    Integer commentsState;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(name = "comments_date")
    Date commentsDate;

    @ManyToOne    
    @JoinColumn(name = "user_number")
    private UserVO userVO;


}
