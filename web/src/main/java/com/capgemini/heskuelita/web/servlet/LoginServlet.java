package com.capgemini.heskuelita.web.servlet;

import com.capgemini.heskuelita.core.beans.User;
import com.capgemini.heskuelita.data.db.DBConnectionManager;
import com.capgemini.heskuelita.data.impl.UserDaoJDBC;
import com.capgemini.heskuelita.service.ISecurityService;
import com.capgemini.heskuelita.service.impl.SecurityServiceImpl;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private ISecurityService securityService;

    public LoginServlet() {
        super();
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        //CONFIG DEL SERVLET
        ServletContext context = config.getServletContext();

        //CONFIGURACION DE LA DB
        DBConnectionManager  manager = (DBConnectionManager) context.getAttribute("db");

        try {
            //SERVICIO DE SEGURIDAD DE LOGIN CON DB
            this.securityService = new SecurityServiceImpl(new UserDaoJDBC(manager.getConnection()));
        }catch (Exception e){
            e.printStackTrace();
            throw new ServletException(e);
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //INSTANCIO USUARIO
        User user = new User();
        user.setEmail(req.getParameter("ctrlName"));
        user.setPassword(req.getParameter("ctrlPassword"));


        try {
            //VERIFICO LOGIN
            user=this.securityService.login(user);
            //OBTENGO SESION, LA CREO Y LE DOY ATRIBUTOS DE USUARIO
            HttpSession session =  req.getSession();
            session.setAttribute("user",user);
            resp.sendRedirect("home.jsp");
        } catch (Exception e) {
           e.printStackTrace();
           resp.sendRedirect("error.jsp");
        }
    }
}
