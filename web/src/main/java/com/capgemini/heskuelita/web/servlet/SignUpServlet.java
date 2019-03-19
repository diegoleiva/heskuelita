package com.capgemini.heskuelita.web.servlet;


import com.capgemini.heskuelita.core.beans.Student;
import com.capgemini.heskuelita.core.beans.User;
import com.capgemini.heskuelita.data.db.DBConnectionManager;
import com.capgemini.heskuelita.data.impl.UserDao;
import com.capgemini.heskuelita.service.ISecurityService;
import com.capgemini.heskuelita.service.impl.SecurityServiceImpl;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.format.DateTimeFormatter;


import org.apache.log4j.Logger;

@WebServlet("/signUp")
public class SignUpServlet extends HttpServlet {

    private Logger logger= Logger.getLogger(SignUpServlet.class);

    private ISecurityService securityService;

    public SignUpServlet(){
        super();
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        //CONFIG APP
        ServletContext context = config.getServletContext();

       //CONFIG DB
        DBConnectionManager manager= (DBConnectionManager) context.getAttribute("db");

        try {
            this.securityService = new SecurityServiceImpl(new UserDao(manager.getSessionFactory()));
        }catch (Exception e){
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //PREPARO DATOS PARA GUARDAR EN DB
        Student student= new Student();
        student.setName(req.getParameter("ctrlName"));
        student.setLastname(req.getParameter("ctrlLastname"));
        DateTimeFormatter formatter =  DateTimeFormatter.ofPattern("yyyy-MM-dd");
        student.setDocType(req.getParameter("ctrlDocType"));
        student.setGender(req.getParameter("ctrlGender"));

        User userStudent= new User();
        userStudent.setEmail(req.getParameter("ctrlEmail"));
        userStudent.setPassword(req.getParameter("ctrlPassword"));
        userStudent.setSecQuestion(req.getParameter("ctrlQuestion"));
        userStudent.setSecAnswer(req.getParameter("ctrlAnswer"));
        student.setUser(userStudent);

        logger.debug("Start");
        logger.info("DAta");

        logger.info("Nombre de usuario: " + student.getName());
        logger.info("Apellido de usuario: " + student.getLastname());
        logger.info("Tipo de documento del usuario: " + student.getDocType());
        logger.info("Nro de documento del usuario: "+ student.getIdentification());
        logger.info("Sexo del usuario: " + student.getGender());
        logger.info("Email del usuario: " + student.getUser().getEmail());
        logger.info("Password del usuario: " + student.getUser().getPassword());
        logger.info("Pregunta de seguridad  del usuario: " + student.getUser().getSecQuestion());
        logger.info("Respuesta de seguridad  del usuario: " + student.getUser().getSecAnswer());



        try{
           //VERIFICO REGISTRO ESTUDIANTE
            this.securityService.signUp(student);
        }catch (Exception e){
            logger.error("ERROR REGISTRO ESTUDIANTE");
            e.printStackTrace();
        }
    }
}
