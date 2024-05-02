package com.octest.beans;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity

public class User {
       @Id
       private int idUser;
       private String mail;
       private String passWord;
       private String type;





       public String getMail() {
              return mail;
       }

       public void setMail(String mail) {
              this.mail = mail;
       }

       public String getPassWord() {
              return passWord;
       }

       public void setPassWord(String passWord) {
              this.passWord = passWord;
       }

       public String getType() {
              return type;
       }

       public void setType(String type) {
              this.type = type;
       }


       public Integer getIdUser() {
              return idUser;
       }

       public void setIdUser(Integer idUser) {
              this.idUser = idUser;
       }


}
