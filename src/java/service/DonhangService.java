/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import domain.Ctdonhang;
import domain.Donhang;
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
public class DonhangService {
    private SessionFactory sessionFactory;

    public DonhangService(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
    public List<Donhang> getDonhangs(){
        List<Donhang> donhangs=null;
        donhangs=sessionFactory.getCurrentSession().createQuery("from Donhang").list();
        return donhangs;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public int addDonhang(Donhang donhang){
        if(donhang.getDiachi()!=null && donhang.getEmail()!=null 
                && donhang.getNgaydh()!=null &&donhang.getNgaygiao()!=null
                && donhang.getTenkhachhang()!=null && donhang.getSdt()!=null 
                && donhang.getTongtien()!=0.0 && donhang.getCtdonhangs()!=null)
        {
           int k=-1; 
          k=(int) sessionFactory.getCurrentSession().save(donhang);
            for(Ctdonhang ct : donhang.getCtdonhangs()){
                ct.setDonhang(donhang);
                sessionFactory.getCurrentSession().save(ct);
            }
            return k;
        }
        return -1;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public Boolean updateDonhang(Donhang dh){
        if(dh!=null){
            if(dh.getCtdonhangs().size()>0&& dh.getDiachi()!=null
                   && dh.getEmail()!=null && dh.getNgaydh()!=null && dh.getNgaygiao()!=null && dh.getSdt()!=null
                    && dh.getTenkhachhang()!=null && dh.getTongtien()!=0){
                
                sessionFactory.getCurrentSession().saveOrUpdate(dh);
                
                return true;
            }
        }
        return false;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public Donhang getDonhang(int code){
        Donhang dh=null;
        Criteria ctdh= sessionFactory.getCurrentSession().createCriteria(Donhang.class);
        Criteria ctsanpham=ctdh.createCriteria("ctdonhangs","ct").createCriteria("sanpham","sp");
        Criteria ctnsx=ctsanpham.createCriteria("nhasanxuat","nsx");
        Criteria ctloaisanpham=ctsanpham.createCriteria("loaisanpham","lsp");
        ctdh.add(Restrictions.eq("madh",code));
        ctdh.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        if(ctdh.list().size()>0)
        dh=(Donhang) ctdh.list().get(0);
        return dh;
    }
     @SuppressWarnings("unchecked")
    @Transactional
     public List<Donhang> getDonhangsOfMonth(int thang,int nam){
         List<Donhang> ds=null;
         String q="from Donhang where month(ngaygiao)="+thang+" and tinhtrang=5";
         Query ctdh= sessionFactory.getCurrentSession().createQuery(q);
         
         ds=ctdh.list();
         
         return ds;
     }
     @SuppressWarnings("unchecked")
    @Transactional
     public List<Donhang> getDonhangsCheckout(){
         List<Donhang> ds=null;
         Criteria ctdh= sessionFactory.getCurrentSession().createCriteria(Donhang.class);
         
         int tinhtrang=5;
         ctdh.add(Restrictions.eq("tinhtrang",tinhtrang));
         ds=ctdh.list();
         
         return ds;
     }
    
}
