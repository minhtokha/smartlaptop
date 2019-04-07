/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.Sanpham;
import domaininfo.SanphamInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import service.LoaisanphamService;
import service.NhasanxuatService;
import service.SanphamService;

/**
 *
 * @author MINH TO
 */
@Controller
@RequestMapping("admin")
public class SanphamController {
    @Autowired 
    private SanphamService sanphamService;
    @Autowired
    private LoaisanphamService loaisanphamService;
    @Autowired
    private NhasanxuatService nhasanxuatService;
    @RequestMapping("sanpham")
    public String sanphamManaging(Model model,HttpSession session){
         String admin=(String) session.getAttribute("admin");
        if(admin==null){
            return "redirect:/admin.html";
        }
        List<Sanpham> sanphams=null;
        sanphams=sanphamService.getDsSanpham();
        model.addAttribute("dsSanpham", sanphams);
        return "quanly_sanpham";
    }
    @RequestMapping("sanpham/themsanpham")
    public String themSanpham(Model model,HttpSession session){
         String admin=(String) session.getAttribute("admin");
        if(admin==null){
            return "redirect:/admin.html";
        }
        SanphamInfo sp=new SanphamInfo();
        model.addAttribute("sanpham", sp);
        model.addAttribute("dsLoaisapham", loaisanphamService.getLoaisanphams());
        model.addAttribute("dsNhasanxuat", nhasanxuatService.getNhasanxuats());
        return "sanphamform";
    }
    
    @RequestMapping("sanpham/suasanpham")
    public String suaSanpham(Model model , HttpServletRequest request,HttpSession session){
         String admin=(String) session.getAttribute("admin");
        if(admin==null){
            return "redirect:/admin.html";
        }
        String code=request.getParameter("id");
        int id=Integer.parseInt(code);
        Sanpham sp=sanphamService.getSanpham(id);
        SanphamInfo spInfo=new SanphamInfo();
        spInfo.setMasp(id);
        spInfo.setTen(sp.getTen());
        spInfo.setMota(sp.getMota());
        spInfo.setGia(sp.getGia());
        spInfo.setLoaisanpham(sp.getLoaisanpham());
        spInfo.setLuongton(sp.getLuongton());
        spInfo.setNhasanxuat(sp.getNhasanxuat());
        String tenhinhanh=sp.getHinhanh();
        model.addAttribute("tenhinhanh",tenhinhanh);
        model.addAttribute("sanpham", spInfo);
        model.addAttribute("dsLoaisapham", loaisanphamService.getLoaisanphams());
        model.addAttribute("dsNhasanxuat", nhasanxuatService.getNhasanxuats());
        return "sanphamform";
    }
    
    @RequestMapping("sanpham/capnhapsanpham")
    public String upadateSanpham(@ModelAttribute("sanpham") SanphamInfo sanpham,
            HttpServletRequest request,HttpSession session){
         String admin=(String) session.getAttribute("admin");
        if(admin==null){
            return "redirect:/admin.html";
        }
        sanphamService.suaSanpham(sanpham, request);
        return "redirect:/admin/sanpham.html";
    }
    
    @RequestMapping("sanpham/save_sanpham")
    public String saveSanpham(@ModelAttribute("sanpham") SanphamInfo sanpham,HttpServletRequest request,HttpSession session){
         String admin=(String) session.getAttribute("admin");
        if(admin==null){
            return "redirect:/admin.html";
        }
        sanphamService.themSanpham(sanpham,request);
        return "redirect:/admin/sanpham.html";
    }
    @RequestMapping("sanpham/xoasanpham")
    public String xoaSanpham(HttpServletRequest request,HttpSession session){
         String admin=(String) session.getAttribute("admin");
        if(admin==null){
            return "redirect:/admin.html";
        }
        String code =request.getParameter("id");
        int id=Integer.parseInt(code);
        sanphamService.xoaSanpham(id);
        return "redirect:/admin/sanpham.html";
    }
}
