package com.todaySee.Ajax.converter;

import com.todaySee.Ajax.dto.AjaxDto;
import com.todaySee.domain.Content;


public final class AjaxVoDtoConverter {

    private AjaxVoDtoConverter() {
    }

    public static AjaxDto voToDto(Content content) {
        AjaxDto ajaxDto = new AjaxDto();

        ajaxDto.setContent_number(content.getContentNumber());
        ajaxDto.setContent_title(content.getContentTitle());
        ajaxDto.setContent_main_images_url(content.getContentMainImagesUrl());
        ajaxDto.setContent_poster_images_url(content.getContentPosterImagesUrl());
        ajaxDto.setContent_release_date(content.getContentReleaseDate());
        ajaxDto.setContent_info(content.getContentInfo());

        return ajaxDto;
    }

    public static Content dtoToVo(AjaxDto ajaxDto) {
        Content content = new Content();

        content.setContentNumber(ajaxDto.getContent_number());
        content.setContentTitle(ajaxDto.getContent_title());
        content.setContentMainImagesUrl(ajaxDto.getContent_main_images_url());
        content.setContentPosterImagesUrl(ajaxDto.getContent_poster_images_url());
        content.setContentReleaseDate(ajaxDto.getContent_release_date());
        content.setContentInfo(ajaxDto.getContent_info());

        return content;
    }
}
