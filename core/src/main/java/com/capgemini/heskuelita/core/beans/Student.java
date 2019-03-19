package com.capgemini.heskuelita.core.beans;

import java.time.LocalDate;

public class Student {

    //En esta versión no utilizaré el ID, una mala práctica ya que estamos practicando
   // private String id;
    private String name;
    private String lastname;
    private LocalDate birthdate;
    private String docType;
    private String identification;
    private String gender;
    private User user;

    public Student() {

    }
    //public Student(String id, String name, String lastname, LocalDate birthdate, String docType,long identifiaction , String gender, User user) {
    public Student(String name, String lastname, LocalDate birthdate, String docType,String identifiaction , String gender, User user) {
        //this.id = id;
        this.name = name;
        this.lastname = lastname;
        this.birthdate = birthdate;
        this.docType = docType;
        this.identification = identifiaction;
        this.gender = gender;
        this.user = user;
    }

    //public String getId() {
     //   return id;
    //}

    //public void setId(String id) {
    //    this.id = id;
    //}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public LocalDate getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(LocalDate birthdate) {
        this.birthdate = birthdate;
    }

    public String getDocType() {
        return docType;
    }

    public void setDocType(String docType) {
        this.docType = docType;
    }

    public void setIdentification(String identification) {
        this.identification = identification;
    }

    public String getIdentification() {
        return identification;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
