package com.sumsoon.controller;

import com.sumsoon.zzz.mapper.ChrDictMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Chr.yl on 2021/11/24.
 *
 * @author Chr.yl
 */
@RestController
@RequestMapping("/dict")
public class ChrDictController {

    @Autowired
    private ChrDictMapper chrDictMapper;

    @GetMapping("/querydict")
    public Object querydict() {
        return chrDictMapper.querydict();
    }

    @GetMapping("/selectdict")
    public Object selectdict() {
        return chrDictMapper.selectdict();
    }
}
