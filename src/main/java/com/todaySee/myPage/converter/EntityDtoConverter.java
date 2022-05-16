package com.todaySee.myPage.converter;

import com.todaySee.myPage.domain.AjaxDto;
import com.todaySee.myPage.domain.AjaxVO;

public final class EntityDtoConverter {

    private EntityDtoConverter() {
    }

    public static AjaxDto entityToDto(AjaxVO AjaxVO) {
        AjaxDto ajaxDto = new AjaxDto();

        ajaxDto.setContentNumber(AjaxVO.getContentNumber());
        ajaxDto.setContentTitle(AjaxVO.getContentTitle());
        ajaxDto.setContentMainImgLink(AjaxVO.getContentMainImgLink());

        return ajaxDto;
    }

    public static AjaxVO dtoToEntity(AjaxDto ajaxDto) {
        AjaxVO ajaxVO = new AjaxVO();

        ajaxVO.setContentNumber(ajaxDto.getContentNumber());
        ajaxVO.setContentTitle(ajaxDto.getContentTitle());
        ajaxVO.setContentMainImgLink(ajaxDto.getContentMainImgLink());

        return ajaxVO;
    }

}
