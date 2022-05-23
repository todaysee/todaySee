package com.todaySee.Ajax.converter;

import com.todaySee.Ajax.dto.AjaxDto;
import com.todaySee.domain.Content;


public final class AjaxVoDtoConverter {

    private AjaxVoDtoConverter() {
    }

    public static AjaxDto voToDto(Content content) {
        AjaxDto ajaxDto = new AjaxDto();

        ajaxDto.setContent_number(content.getContent_number());
        ajaxDto.setContent_title(content.getContent_title());
        ajaxDto.setContent_main_images_url(content.getContent_main_images_url());
        ajaxDto.setContent_poster_images_url(content.getContent_poster_images_url());
        ajaxDto.setContent_release_date(content.getContent_release_date());

        return ajaxDto;
    }

    public static Content dtoToVo(AjaxDto ajaxDto) {
        Content content = new Content();

        content.setContent_number(ajaxDto.getContent_number());
        content.setContent_title(ajaxDto.getContent_title());
        content.setContent_main_images_url(ajaxDto.getContent_main_images_url());
        content.setContent_poster_images_url(ajaxDto.getContent_poster_images_url());
        content.setContent_release_date(ajaxDto.getContent_release_date());

        return content;
    }
}
