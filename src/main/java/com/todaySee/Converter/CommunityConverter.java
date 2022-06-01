package com.todaySee.Converter;

import com.todaySee.domain.Community;
import com.todaySee.dto.CommunityDto;

public class CommunityConverter {

    private CommunityConverter(){

    }

    public static CommunityDto communityToCommunityDto(Community community){
        CommunityDto communityDto = new CommunityDto();

        communityDto.setCommunityDate(community.getCommunityDate());
        communityDto.setCommunityCategory(community.getCommunityCategory());
        communityDto.setCommunityContent(community.getCommunityContent());


        return communityDto;
    }
}
