package com.capgemini.heskuelita.service.impl;

import com.capgemini.heskuelita.core.beans.Student;
import com.capgemini.heskuelita.core.beans.User;
import com.capgemini.heskuelita.data.IUserDao;
import com.capgemini.heskuelita.service.ISecurityService;
import com.capgemini.heskuelita.service.SecurityException;
import org.apache.log4j.Logger;

public class SecurityServiceImpl implements ISecurityService {

    private IUserDao userDao;

    //Instancio el logger
    private Logger logger = Logger.getLogger(SecurityServiceImpl.class);
    public SecurityServiceImpl(IUserDao userDao){
        super();
        this.userDao = userDao;
    }


    @Override
    public User login(User user) throws SecurityException {
        User userLogin;
        try {
            userLogin = userDao.login(user.getEmail(),user.getPassword());
            System.out.println("Nombre de usuario: " + user.getName());
            System.out.println("Apellido de Usuario: "+ user.getLastname());
            System.out.println("Email: "+ user.getEmail());
        }catch (Exception e){
            throw new SecurityException(e);
        }
        return userLogin;
    }

    @Override
    public void signUp(Student student) throws SecurityException {
        try{
            logger.debug("Start service");
            logger.info("User data to save");

            logger.info("Nombre de usuario: " + student.getName());
            logger.info("Apellido de usuario: " + student.getLastname());
            logger.info("Fecha de nacimiento del usuario: " + student.getBirthdate().toString());
            logger.info("Tipo de documento del usuario: " + student.getDocType());
            //Este me andaba mal
            //logger.info("Nro de documento del usuario: "+ student.getIdentification());
            logger.info("Sexo del usuario: " + student.getGender());
            logger.info("Email del usuario: " + student.getUser().getEmail());
            logger.info("Password del usuario: " + student.getUser().getPassword());
            logger.info("Pregunta de seguridad  del usuario: " + student.getUser().getSecQuestion());
            logger.info("Respuesta de seguridad  del usuario: " + student.getUser().getSecAnswer());


            this.userDao.signUp(student);
        }catch (Exception e){
            logger.error("Error en el servicio de alta");
            throw new SecurityException(e);
        }
    }
}