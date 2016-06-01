package main.liqi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by liqi on 2016/5/30.
 */
@Controller
@RequestMapping("/")
public class TestController {

    @RequestMapping(value = "/viewAll" ,method = RequestMethod.POST)
    public ModelAndView viewAll(String name, String pwd){
        ModelAndView mv = new ModelAndView();
        mv.addObject("name",name);
        mv.addObject("pwd",pwd);
        mv.setViewName("/hello.jsp");
        return mv;
    }
}
