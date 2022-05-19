package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "images")
public class Images {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer images_number;

    String images_url;
    String images_file_name; // 원본 파일명
    String images_file_rename; // 수정된 파일명
    String images_type; // 파일의 저장위치

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date images_upload_date; // 파일 저장날짜

    @ManyToOne
    @JoinColumn(name="user_number")
    private User user;

}
