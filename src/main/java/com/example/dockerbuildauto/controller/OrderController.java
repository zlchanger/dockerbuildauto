package com.example.dockerbuildauto.controller;


import com.example.dockerbuildauto.vm.ResultVM;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

/**
 * @Auther: changzhaoliang
 * @Date: 2019-11-18 09:59
 * @Description:
 */
@RestController
@RequestMapping("/api/order")
public class OrderController {

    @GetMapping("/index")
    public ResultVM<String> index() {
        String message = "docker build nnnn";
        return new ResultVM<>(1L, message, "success", new Date());
    }
}
