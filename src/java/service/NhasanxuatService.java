/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import domain.Nhasanxuat;
import domain.Sanpham;
import domaininfo.NhasanxuatInfo;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.collection.internal.PersistentSet;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author MINH TO
 */
public class NhasanxuatService {
    private SessionFactory sessionFactory;

    public NhasanxuatService(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public List<Nhasanxuat> getNhasanxuats(){
        List<Nhasanxuat> nhasanxuats=null;
        try{
            
            Query query=sessionFactory.getCurrentSession().createQuery("from Nhasanxuat");
            
            nhasanxuats=query.list();
        }catch(Exception e){
            e.printStackTrace();
        }
        return nhasanxuats;
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
    public Nhasanxuat getNhasanuxat( int mansx){
        Criteria cr=sessionFactory.getCurrentSession().createCriteria(Nhasanxuat.class);
        Criteria crSanpham=cr.createCriteria("sanphams","sp");
        cr.add(Restrictions.eq("mansx", mansx));
        
        List<Nhasanxuat> nhansanxuats=cr.list();
        
        Nhasanxuat nsx1=nhansanxuats.get(0);
        
        return nsx1;
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
    public boolean themNhasanxuat(NhasanxuatInfo nsxinfo, HttpServletRequest request){
        if(nsxinfo.getTennsx()!=null)
        {
            List<MultipartFile> files=nsxinfo.getHinhanhs();
        List<String> fileNames=new ArrayList<String>();
         String fileName="";
        if(null!=files &&files.size()>0){
            for(MultipartFile f: files){
               fileName=f.getOriginalFilename();
                File imageFile=new File(request.getServletContext().getRealPath("/images/nhasanxuats"),fileName);
                fileNames.add(fileName);
                try{
                    f.transferTo(imageFile);
                    
                }catch(IOException e){
                    e.printStackTrace();
                }
                
                
            }
            
        }
        Nhasanxuat sp=new Nhasanxuat();
        sp.setTennsx(nsxinfo.getTennsx());
        
        sp.setHinhanh(fileName);
        sessionFactory.getCurrentSession().save(sp);
        return true;
        }
        return false;
    }
    @SuppressWarnings("unchecked")
    @Transactional
    public boolean suaNhasanxuat(NhasanxuatInfo nsxinfo, HttpServletRequest request){
        
        List<MultipartFile> files=nsxinfo.getHinhanhs();
        List<String> fileNames=new ArrayList<String>();
         String fileName="";
     if(nsxinfo.getHinhanhs()!=null)
        {
            
        if(null!=files &&files.size()>0){
            for(MultipartFile f: files){
               fileName=f.getOriginalFilename();
               if(fileName!=""){
                 File imageFile=new File(request.getServletContext().getRealPath("/images/nhasanxuats"),fileName);
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
         Nhasanxuat sp=new Nhasanxuat();
        sp.setTennsx(nsxinfo.getTennsx());
        
        sp.setHinhanh(fileName);
        sessionFactory.getCurrentSession().save(sp);
        return true;
        }
     if(nsxinfo.getMansx()!=null){
         Nhasanxuat sp=getNhasanuxat(nsxinfo.getMansx());
        sp.setTennsx(nsxinfo.getTennsx());
        
        sessionFactory.getCurrentSession().saveOrUpdate(sp);
        return true;
     }

        
    return false;
     
    }
    public void xoa(int id){
        Nhasanxuat nsx=getNhasanuxat(id);
        if(nsx!=null)
        sessionFactory.getCurrentSession().delete(nsx);
    }
    
}
