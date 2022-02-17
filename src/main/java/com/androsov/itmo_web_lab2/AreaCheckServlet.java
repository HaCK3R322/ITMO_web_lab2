package com.androsov.itmo_web_lab2;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.LinkedList;

import com.androsov.itmo_web_lab2.Result;

@WebServlet(name = "areaCheckServlet", value="/areaCheckServlet")
public class AreaCheckServlet extends HttpServlet {
    private ServletConfig config;
    private ServletContext context;
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init();
        this.config = config;
        context = config.getServletContext();
    }

    LinkedList<Result> results = new LinkedList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html; charset=UTF-8");

        try {
            float x = (float)req.getAttribute("x");
            float y = (float)req.getAttribute("y");
            float r = (float)req.getAttribute("r");

            boolean hit = check(x, y, r);

            String colorOfHit = "red";
            if(hit) colorOfHit = "green";

            String hitResultText = "BAD!";
            if(hit) hitResultText = "NICE!";

            context.setAttribute("hit", hit);
            context.setAttribute("colorOfHit", colorOfHit);
            context.setAttribute("hitResultText", hitResultText);

            results.add(packInBeanResult(x, y, r, hit));
            LinkedList<Result> reversedResults = new LinkedList<>(results);
            Collections.reverse(reversedResults);
            context.setAttribute("results", reversedResults);

            req.getRequestDispatcher("results.jsp").forward(req, resp);

        } catch (ServletException servletException) {
            PrintWriter out = resp.getWriter();
            out.println("<head><body>");
            out.println("<h1>Servlet exception: " + servletException.getMessage() + "</h1>\n");
            out.println("</body></head>");
        }
    }

    public void destroy() {

    }

    protected Result packInBeanResult(float x, float y, float r, boolean hit) {
        Result result = new Result();
        result.setX(x);
        result.setY(y);
        result.setR(r);
        result.setHit(hit);
        return result;
    }

    protected boolean check(float x, float y, float r) {
        if(y >= 0 && x >= 0 && (x*x + y*y <= (r/2)*(r/2))) {
            return true;
        } else if(0 >= y && y >= -r && r >= x && x >= 0) {
            return true;
        } else if( 0 >= x && x >= -r && (r*(-0.5 * x/r - 0.5) <= y && y <= 0) ) {
            return true;
        }
        return false;
    }
}
