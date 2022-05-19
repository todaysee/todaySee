package com.todaySee.Ajax.converter;

import com.todaySee.Ajax.dto.AjaxDto;
import com.todaySee.Ajax.domain.AjaxVO;

public final class AjaxVoDtoConverter {

    private AjaxVoDtoConverter() {
    }

    public static AjaxDto voToDto(AjaxVO AjaxVO) {
        AjaxDto ajaxDto = new AjaxDto();

        ajaxDto.setContentNumber(AjaxVO.getContentNumber());
        ajaxDto.setContentTitle(AjaxVO.getContentTitle());
        ajaxDto.setContentMainImgLink(AjaxVO.getContentMainImgLink());
        ajaxDto.setContentPosterImgLink(AjaxVO.getContentPosterImgLink());
        ajaxDto.setContentGenre(AjaxVO.getContentGenre());
        ajaxDto.setContentReleaseDate(AjaxVO.getContentReleaseDate());

        return ajaxDto;
    }

    public static AjaxVO dtoToVo(AjaxDto ajaxDto) {
        AjaxVO ajaxVO = new AjaxVO();

        ajaxVO.setContentNumber(ajaxDto.getContentNumber());
        ajaxVO.setContentTitle(ajaxDto.getContentTitle());
        ajaxVO.setContentMainImgLink(ajaxDto.getContentMainImgLink());
        ajaxVO.setContentPosterImgLink(ajaxDto.getContentPosterImgLink());
        ajaxVO.setContentGenre(ajaxDto.getContentGenre());
        ajaxVO.setContentReleaseDate(ajaxDto.getContentReleaseDate());

        return ajaxVO;
    }
}
