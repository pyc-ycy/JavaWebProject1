package com.lyq.ServletFilterSet;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "FilterTest")
public class FilterTest implements Filter {
    private String testMsg;
    public void init(FilterConfig config) throws ServletException {
        testMsg = config.getInitParameter("test");
    }

    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        ServletContext context = request.getSession().getServletContext();
        context.setAttribute("test", testMsg);
        chain.doFilter(req, resp);
    }
}
