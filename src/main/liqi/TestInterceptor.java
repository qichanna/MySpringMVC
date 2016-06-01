package main.liqi;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by liqi on 2016/5/30.
 */
public class TestInterceptor implements HandlerInterceptor{
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        System.out.println("pre handle");
        // o表示的是被拦截的请求的目标对象
        httpServletRequest.setCharacterEncoding("UTF-8");//编码问题

        //登录验证问题
        /*if(httpServletRequest.getSession().getAttribute("user") == null){
            httpServletRequest.getRequestDispatcher("/login.jsp").forward(httpServletRequest,httpServletResponse);
            return false;
        }*/
        return true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        System.out.println("post handle");
        // modelAndView.addObject("aa","bb"); 增加或修改页面中回传的值
        // modelAndView.setViewName("/hello2.jsp"); 改变JSP视图
    }

    //

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        System.out.println("after handle");
    }
}
