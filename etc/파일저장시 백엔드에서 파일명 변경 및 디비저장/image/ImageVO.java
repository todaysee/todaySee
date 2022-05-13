package com.todaySee.domain.image;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "ImageInfo") // @Table(name = "imageinfo")
public class ImageVO {

    @Id
    @GeneratedValue
    private Integer imageSeq;

    private String imageName;
    private String imageOriName;
    private String imageURL;

    @Temporal(TemporalType.DATE)
    private Date imageUploadDate;


}
