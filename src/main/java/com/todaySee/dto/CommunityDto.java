package com.todaySee.dto;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Data
public class CommunityDto {

    Integer communityNumber;
    String communityTitle;
    Date communityDate;
    String communityContent;
    Integer communityLike; // 게시글 좋아요
    Integer communityHits; // 게시글 조회수
    Integer communityState; // 게시글 상태
    String communityCategory; // 게시글 카테고리 이름

}
