package com.todaySee.Ajax.service;





import com.todaySee.Ajax.converter.AjaxVoDtoConverter;
import com.todaySee.Ajax.dto.AjaxDto;
import com.todaySee.Ajax.persistence.AjaxRepository;
import com.todaySee.domain.Content;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
@Getter
public class AjaxServiceImpl implements AjaxService {

    @Autowired
    private AjaxRepository ajaxRepository;

    @Override
    public Page<AjaxDto> pages(Pageable pageable) {
        Page<Content> notes =ajaxRepository.findAll(pageable);

        Page<AjaxDto> pages = notes.map(entity -> {
            AjaxDto dto = AjaxVoDtoConverter.voToDto(entity);
            return dto;
        });

        return pages;
    }

}
