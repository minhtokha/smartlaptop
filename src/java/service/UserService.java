/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import domain.User;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author MINH TO
 */
public class UserService {
    private SessionFactory sessionFactory;

    public UserService(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public Boolean checkAdmin(String userName, String pass) throws NoSuchAlgorithmException{
        
            Criteria query=sessionFactory.getCurrentSession().createCriteria(User.class);
           List<User> users=null;
           query.add(Restrictions.eq("quyen","admin"));
           query.add(Restrictions.eq("tendangnhap", userName));
           
           query.add(Restrictions.eq("matkhau", MD5(pass)));
           users=query.list();
           if(users.size()==1)
               return true;
        return false;
    }
    private String MD5(String pass) throws NoSuchAlgorithmException{
        
        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] hashInBytes = md.digest(pass.getBytes(StandardCharsets.UTF_8));

        StringBuilder sb = new StringBuilder();
        for (byte b : hashInBytes) {
            sb.append(String.format("%02x", b));
        }
        return (sb.toString());
    }
}
