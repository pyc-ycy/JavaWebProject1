package com.lyq.ServletFilterSet;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "CharactorFilter")
public class CharactorFilter implements Filter {
    String enCoding = null;
    public void destroy() {
        enCoding = null;
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        if(enCoding != null){
            req.setCharacterEncoding(enCoding);
            resp.setContentType("text/html;charset="+enCoding);
        }
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {
        enCoding = config.getInitParameter("encoding");

    }

}
