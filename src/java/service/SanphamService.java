/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import domain.Sanpham;
import domaininfo.SanphamInfo;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author MINH TO
 */
public class SanphamService {

    private SessionFactory sessionFactory;

    public SanphamService(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    public List<Sanpham> getDsSanpham(int pageId, int total) {
        List<Sanpham> sanphams = null;
        try {

            Query query = sessionFactory.getCurrentSession().createQuery("from Sanpham");
            query.setFirstResult(pageId);
            query.setMaxResults(total);
            sanphams = query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sanphams;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    public List<Sanpham> getDsSanpham() {
        List<Sanpham> sanphams = null;
        try {

            Query query = sessionFactory.getCurrentSession().createQuery("from Sanpham");

            sanphams = query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sanphams;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    public Sanpham getSanpham(int id) {
        Sanpham p = null;
        try {

            p = (Sanpham) sessionFactory.getCurrentSession().get(Sanpham.class, new Integer(id));
            if (p == null) {
                System.out.println("Sai truy van");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    public boolean themSanpham(SanphamInfo spinfo, HttpServletRequest request) {
        if (spinfo.getTen() != null) {
            List<MultipartFile> files = spinfo.getHinhanhs();
            List<String> fileNames = new ArrayList<String>();
            String fileName = "";
            if (null != files && files.size() > 0) {
                for (MultipartFile f : files) {
                    fileName = f.getOriginalFilename();
                    File imageFile = new File(request.getServletContext().getRealPath("/images/products"), fileName);
                    fileNames.add(fileName);
                    try {
                        f.transferTo(imageFile);

                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                }

            }
            Sanpham sp = new Sanpham();
            sp.setTen(spinfo.getTen());
            sp.setMota(spinfo.getMota().trim());
            sp.setGia(spinfo.getGia());
            sp.setLuongton(spinfo.getLuongton());
            sp.setLoaisanpham(spinfo.getLoaisanpham());
            sp.setNhasanxuat(spinfo.getNhasanxuat());
            sp.setHinhanh(fileName);
            sessionFactory.getCurrentSession().save(sp);
            return true;
        }
        return false;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    public boolean suaSanpham(SanphamInfo spInfo, HttpServletRequest request) {

        List<MultipartFile> files = spInfo.getHinhanhs();
        List<String> fileNames = new ArrayList<String>();
        String fileName = "";
        if (spInfo.getHinhanhs() != null && spInfo.getMasp() == null) {

            if (null != files && files.size() > 0) {
                for (MultipartFile f : files) {
                    fileName = f.getOriginalFilename();
                    if (fileName != "") {
                        File imageFile = new File(request.getServletContext().getRealPath("/images/products"), fileName);
                        fileNames.add(fileName);
                        if (imageFile.exists()) {
                            break;
                        } else {
                            try {
                                f.transferTo(imageFile);

                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    } else {
                        break;
                    }
                }

            }
            Sanpham sp = new Sanpham();
            sp.setTen(spInfo.getTen());
            sp.setMota(spInfo.getMota().trim());
            sp.setGia(spInfo.getGia());
            sp.setLuongton(spInfo.getLuongton());
            sp.setLoaisanpham(spInfo.getLoaisanpham());
            sp.setNhasanxuat(spInfo.getNhasanxuat());
            sp.setHinhanh(fileName);
            sessionFactory.getCurrentSession().save(sp);
            return true;
        }
        if (spInfo.getMasp() != null) {
            Sanpham sp = getSanpham(spInfo.getMasp());
            sp.setTen(spInfo.getTen());
            sp.setMota(spInfo.getMota().trim());
            sp.setGia(spInfo.getGia());
            sp.setLuongton(spInfo.getLuongton());
            sp.setLoaisanpham(spInfo.getLoaisanpham());
            sp.setNhasanxuat(spInfo.getNhasanxuat());
            if (spInfo.getHinhanhs() != null && spInfo.getHinhanhs().size() > 1) {

                if (null != files && files.size() > 0 && files.isEmpty() == false) {
                    for (MultipartFile f : files) {
                        fileName = f.getOriginalFilename();
                        if (fileName != "") {
                            File imageFile = new File(request.getServletContext().getRealPath("/images/products"), fileName);
                            fileNames.add(fileName);
                            if (imageFile.exists()) {
                                break;
                            } else {
                                try {
                                    f.transferTo(imageFile);

                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                            }
                        } else {
                            break;
                        }
                    }
                    sp.setHinhanh(fileName);
                }

            }

            sessionFactory.getCurrentSession().saveOrUpdate(sp);
            return true;
        }

        return false;

    }

    @SuppressWarnings("unchecked")
    @Transactional
    public boolean xoaSanpham(int id) {
        Sanpham sp = getSanpham(id);
        if (sp != null) {
            sessionFactory.getCurrentSession().delete(sp);
            return true;
        }
        return false;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    public List<Sanpham> search(String name) {
        if (name != null) {
            Criteria query = sessionFactory.getCurrentSession().createCriteria(Sanpham.class);
            List<Sanpham> sanphams = null;
            query.add(Restrictions.ilike("ten", name));

            sanphams = query.list();
            if (sanphams.size() > 0) {
                return sanphams;
            }
           
        }
         return null;
    }

}
