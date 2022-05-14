package com.todaySee.community.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table
@Entity
public class CommunityVO {

    @Id
    Integer testHome;
}
