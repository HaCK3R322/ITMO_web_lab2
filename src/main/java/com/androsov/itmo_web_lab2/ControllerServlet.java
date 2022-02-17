package com.androsov.itmo_web_lab2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import static java.awt.Color.red;

@WebServlet(name = "controllerServlet", value="/controllerServlet")
public class ControllerServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html; charset=UTF-8");

        try {
            try {
                float x = Float.parseFloat(req.getParameter("X-select"));
                float y = Float.parseFloat(req.getParameter("Y-textarea"));
                float r = Float.parseFloat(req.getParameter("R-checkbox"));

                req.setAttribute("x", x);
                req.setAttribute("y", y);
                req.setAttribute("r", r);
                req.getRequestDispatcher("areaCheckServlet").forward(req, resp);

            } catch (NumberFormatException | NullPointerException e) {
                req.setAttribute("exceptionMessage", e.getMessage());
                req.getRequestDispatcher("parseError.jsp").forward(req, resp);
            }


        } catch (ServletException e) {
            PrintWriter out = resp.getWriter();
            out.println("<head><body>");
            out.println("<h1>Servlet exception: " + e.getMessage() + "</h1>\n");
            out.println("</body></head>");
        }
    }

    public void destroy() {

    }
}
