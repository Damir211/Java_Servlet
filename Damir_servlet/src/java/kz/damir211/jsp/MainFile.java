package kz.damir211.jsp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainFile extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public MainFile() {
        super();
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        if (request.getParameter("calcSubmit") != null) {

            ResultFile obj = null;
            try {
                double a = Double.parseDouble(request.getParameter("a"));
                double b = Double.parseDouble(request.getParameter("b"));
                double c = Double.parseDouble(request.getParameter("c"));
                double x = Double.parseDouble(request.getParameter("x"));           
                double res = 0;
                
                if(x<4){
                    res= ((x*x+a+a)*c)/2*b;
                }else{
                    res= Math.pow(x,3)*(a-b);
                }

                obj = new ResultFile();
                obj.setRES(res);


                request.setAttribute("form", obj);
                getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
                return;
            } catch (Exception e) {
                getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
                return;

            }
        }

        getServletContext().getRequestDispatcher("/input.jsp").forward(request, response);

    }

}
