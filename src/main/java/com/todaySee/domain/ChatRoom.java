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
    @Column(name="chatroom_seq")
    Integer chatroomSeq; // 채팅방 인서트 할때 seq 필요하기 때문에 넣었음
    
    @Column(name="chatroom_number")
    Integer chatroomNumber;
    @Column(name="chatroom_name")
    String chatroomName;
    @Column(name="chatroom_img")
    String chatroomImg; // 확인요망

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(name="chatroom_date")
    Date chatroomDate;
    @Column(name="chatroom_state")
    Integer chatroomState; // 채팅 상태


}
