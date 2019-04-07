/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;
import domain.*;
import domaininfo.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author MINH TO
 */
public class DichvuService {
     private SessionFactory sessionFactory;

    public DichvuService(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public List<Thongtindichvu> getDichvus(){
        List<Thongtindichvu> dichvus=null;
        dichvus=sessionFactory.getCurrentSession().createQuery("from Thongtindichvu").list();
        return dichvus;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public List<Thongtindichvu> getDichvus(int pageid,int total){
        List<Thongtindichvu> dichvus=null;
        Criteria cr=sessionFactory.getCurrentSession().createCriteria(Thongtindichvu.class);
        cr.setFirstResult(pageid);
        cr.setMaxResults(total);
        dichvus=cr.list();
        return dichvus;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public Thongtindichvu getDichvu(int code){
        Thongtindichvu dv=null;
        dv=(Thongtindichvu) sessionFactory.getCurrentSession().get(Thongtindichvu.class,new Integer(code));
        return dv;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public boolean themDichvu(DichvuInfo dv, HttpServletRequest request){
        if (dv.getTentt() != null) {
            List<MultipartFile> files = dv.getHinhanhs();
            List<String> fileNames = new ArrayList<String>();
            String fileName = "";
            Thongtindichvu sp = new Thongtindichvu();
            sp.setTentt(dv.getTentt());
            sp.setNoidung(dv.getNoidung().trim());
            if (null != files && files.size() > 0) {
                for (MultipartFile f : files) {
                    fileName = f.getOriginalFilename();
                    File imageFile = new File(request.getServletContext().getRealPath("/images/dichvu"), fileName);
                    fileNames.add(fileName);
                   
                    try {
                        f.transferTo(imageFile);

                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                }

            }
            if(fileNames.get(0)!=null)
            sp.setHinhanh(fileNames.get(0));
            sessionFactory.getCurrentSession().save(sp);
            return true;
        }
        return false;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public boolean updateDichvu(DichvuInfo dv, HttpServletRequest request){
       List<MultipartFile> files=dv.getHinhanhs();
        List<String> fileNames=new ArrayList<String>();
         String fileName="";
         
     if(dv.getHinhanhs()!=null&& dv.getMatt()==null)
        {
            
        if(null!=files &&files.size()>0){
            for(MultipartFile f: files){
               fileName=f.getOriginalFilename();
               if(fileName!=""){
                 File imageFile=new File(request.getServletContext().getRealPath("/images/dichvu"),fileName);
                fileNames.add(fileName);
                    if(imageFile.exists()){
                        break;
                    }
                    else{
                        try{
                         f.transferTo(imageFile);

                     }catch(IOException e){
                         e.printStackTrace();
                     }
                    }
               }else break;
            }
            
        }
        Thongtindichvu sp=new Thongtindichvu();
        sp.setTentt(dv.getTentt());
        sp.setNoidung(dv.getNoidung().trim());
        if(fileNames.get(0)!=null)
            sp.setHinhanh(fileNames.get(0));
        sessionFactory.getCurrentSession().save(sp);
        return true;
        }
     if(dv.getMatt()!=null){
         Thongtindichvu sp1=getDichvu(dv.getMatt());
         
        sp1.setTentt(dv.getTentt());
        sp1.setNoidung(dv.getNoidung().trim());
       
            
        
        
        sessionFactory.getCurrentSession().saveOrUpdate(sp1);
        return true;
     }

        
    return false;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public boolean xoa(int code){
        
       Query q= sessionFactory.getCurrentSession().createQuery("delete Thongtindichvu where matt="+code);
    q.executeUpdate();

        
        return true;
    }
    
}
