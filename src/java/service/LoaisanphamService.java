/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import domain.Loaisanpham;
import domain.Sanpham;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author MINH TO
 */
public class LoaisanphamService {
    private SessionFactory sessionFactory;

    public LoaisanphamService(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public List<Loaisanpham> getLoaisanphams(){
        List<Loaisanpham> loaisanphams=null;
        try{
            String query ="from Loaisanpham";
            loaisanphams=sessionFactory.getCurrentSession().createQuery(query).list();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return loaisanphams;
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
    public Loaisanpham getLoaisanpham(int maloai){
        Loaisanpham lsp=null;
        Criteria cr=sessionFactory.getCurrentSession().createCriteria(Loaisanpham.class).createAlias("sanphams","sp").add(Restrictions.eq("maloai",maloai ));
        List<Loaisanpham> nhansanxuats=cr.list();
         lsp=nhansanxuats.get(0);
        return lsp;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public boolean themLoaisanpham(Loaisanpham lsp){
       if(lsp.getMota()!=null&& lsp.getTenloai()!=null){
         int k=(int) sessionFactory.getCurrentSession().save(lsp);
        if(k!=0)
            return true;
       }
       
        return false;
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
    public boolean xoaLoaisanpham(int code){
        
       Loaisanpham ls=(Loaisanpham) sessionFactory.getCurrentSession().get(Loaisanpham.class,code);
       if(ls!=null&& ls.getSanphams().size()==0){
           sessionFactory.getCurrentSession().delete(ls);
           return true;
       }
       return false;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public void suaLoaisanpham(Loaisanpham ls){
        
            sessionFactory.getCurrentSession().saveOrUpdate(ls);
          
    }
}
