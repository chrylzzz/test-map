package com.sumsoon.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.UUID;

/**
 * Created by Chr.yl on 2020/3/22.
 *
 * @author Chr.yl
 */
@RestController
@Slf4j
@RequestMapping("/resp")
public class TestResponseController {


    @GetMapping("/con")
    public void show(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setHeader("testResp", UUID.randomUUID().toString());

        response.sendError(404, "eoor");
        log.info("aaa");
        log.debug("bbb");
        log.error("zzz");
        log.trace("sss");
        log.warn("lll");
    }

}
