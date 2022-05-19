package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "searchcount")
public class SearchCount {

    @Id
    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date searchcount_date;

    Integer searchcount_amount;
}
