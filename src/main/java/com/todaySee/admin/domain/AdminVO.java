package com.todaySee.admin.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table
@Entity
public class AdminVO {

    @Id
    Integer testHome;
}
