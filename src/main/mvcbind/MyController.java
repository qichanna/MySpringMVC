package main.mvcbind;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by liqi7 on 2016/6/2.
 */
@Controller
@RequestMapping(value = "/")
public class MyController {
    //todo     http://localhost:8080/baseType.do?age=10
    //todo 500 http://localhost:8080/baseType.do
    //todo 400 http://localhost:8080/baseType.do?age=abc
    @RequestMapping(value = "/baseType" ,method = RequestMethod.GET)
    @ResponseBody
    public String baseType(int age){
        return "age:"+age;
    }
}
