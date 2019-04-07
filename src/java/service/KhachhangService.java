/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import domain.*;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.CriteriaQuery;
import org.hibernate.criterion.Restrictions;
import org.hibernate.jpa.criteria.CriteriaBuilderImpl;
import org.hibernate.jpa.internal.EntityManagerFactoryImpl;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author MINH TO
 */
public class KhachhangService {
    private SessionFactory sessionFactory;

    public KhachhangService(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
    public List<Khachhang> getKhachhangs(){
        List<Khachhang> khachhangs=null;
        khachhangs=sessionFactory.getCurrentSession().createQuery("from Khachhang").list();
        return khachhangs;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public Khachhang getKhachhang(int id){
        Khachhang khachhang=null;
        khachhang=(Khachhang) sessionFactory.getCurrentSession().get(Khachhang.class, id);
        return khachhang;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public Khachhang updateKhachhang(Khachhang kh){

            sessionFactory.getCurrentSession().saveOrUpdate(kh);
            return kh;
       

            
      
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public Khachhang addKhachhang(Khachhang kh){
        Khachhang khcheck=getKhachhang(kh.getEmail());
        if(khcheck!=null){
            return null;
        }
         sessionFactory.getCurrentSession().save(kh);
         return kh;
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
    public Khachhang getKhachhang(String pass, String email){
        List<Khachhang> khachhangs=null;
        
        
        Criteria ctKhachhang=sessionFactory.getCurrentSession().createCriteria(Khachhang.class,"kh");
        Criteria ctDonhang=ctKhachhang.createCriteria("donhangs","dh");
        Criteria ctCtdonhang=ctDonhang.createCriteria("ctdonhangs","ctdh");
        Criteria ctSanpham=ctCtdonhang.createCriteria("sanpham","sp");
        ctKhachhang.add(Restrictions.eq("password",pass));
        ctKhachhang.add(Restrictions.eq("email",email));
        ctKhachhang.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        khachhangs=ctKhachhang.list();
        if(khachhangs.size()==1){
            Khachhang kh=khachhangs.get(0);
            return kh;
        }
        return null;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public Khachhang getKhachhang(String email){
        Criteria ctKhachhang=sessionFactory.getCurrentSession().createCriteria(Khachhang.class,"kh");
        ctKhachhang.add(Restrictions.eq("email",email));
        List<Khachhang> khachhangs=null;
        khachhangs=ctKhachhang.list();
        if(khachhangs.size()==1){
            Khachhang kh=khachhangs.get(0);
            return kh;
        }
        return null;
    }
    
}
