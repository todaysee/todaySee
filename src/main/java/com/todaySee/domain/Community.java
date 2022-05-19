package com.todaySee.domain;

import java.util.Date;

public class Community {

    Integer community_number;

    String community_title;
    Date community_date;
    String community_content;
    Integer community_like; // 게시글 좋아요
    Integer community_hits; // 게시글 조회수

    Integer user_number;
}
