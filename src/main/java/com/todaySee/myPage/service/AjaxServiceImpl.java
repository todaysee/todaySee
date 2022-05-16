package com.todaySee.myPage.service;





import com.todaySee.myPage.converter.EntityDtoConverter;
import com.todaySee.myPage.domain.AjaxDto;
import com.todaySee.myPage.domain.AjaxVO;
import com.todaySee.myPage.persistence.AjaxRepository;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
@Getter
public class AjaxServiceImpl implements AjaxService {

    @Autowired
    private AjaxRepository ajaxRepository;

    @Override
    public Page<AjaxDto> pages(Pageable pageable) {
        Page<AjaxVO> notes =ajaxRepository.findAll(pageable);

        Page<AjaxDto> pages = notes.map(entity -> {
            AjaxDto dto = EntityDtoConverter.entityToDto(entity);
            return dto;
        });

        return pages;
    }

}
