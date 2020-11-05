package com.guigu.controlle;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author shkstart
 * @creat 2020-11-03-上午10:23
 */
@Controller
public class Test {
    @RequestMapping("/aaa")
        public String success(){
        System.out.println(111);
        return "hello";
    }

}
