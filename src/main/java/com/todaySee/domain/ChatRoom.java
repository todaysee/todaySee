package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "chatroom")
public class ChatRoom {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer chatroom_number;

    String chatroom_name;
    String chatroom_img; // 확인요망

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date chatroom_date;
    Integer chatroom_state; // 채팅 상태

    @ManyToOne
    @JoinColumn(name="user_number")
    private User user;
}
