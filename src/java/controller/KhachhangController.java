/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.Donhang;
import domain.Khachhang;
import java.util.ArrayList;
import javax.servlet.http.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.KhachhangService;

/**
 *
 * @author MINH TO
 */
@Controller
@RequestMapping("account")
public class KhachhangController {
    @Autowired
    private KhachhangService khachhangService;
    @RequestMapping("dangky")
    public String dangKy(Model model,HttpSession session){
        if(session.getAttribute("account")==null)
        {
            model.addAttribute("khachhang", new Khachhang());
            return "dangky";
        }
        return "redirect:../";
        
    }
    @RequestMapping("AddAccount")
    public String addAccount(Model model, HttpServletRequest request,
            @ModelAttribute("khachhang") Khachhang khachhang,HttpSession session){
        
        String psw_repeat=request.getParameter("psw-repeat");
        Khachhang t=khachhangService.getKhachhang(khachhang.getEmail());
        if(khachhang.getPassword().contentEquals(psw_repeat) &&khachhang.getEmail()!=null &&khachhang.getEmail().matches("(.*)@(.*)")){
            if(t!=null)
            {
                t.setPassword(psw_repeat);
               Khachhang k= khachhangService.updateKhachhang(t);
                session.setAttribute("account", k);
                return "myaccount";
            }
            else if(khachhangService.addKhachhang(khachhang)!=null)
            {
                session.setAttribute("account", khachhang);
                return "redirect:../";
            }
            return "dangky";
             
        }else 
            return "dangky";
        
       
    }
    @RequestMapping("myaccount")
    public String getMyaccount(Model model,HttpSession session){
        if(session.getAttribute("account")!=null){
            Khachhang kh=(Khachhang) session.getAttribute("account");
            Khachhang khtam=khachhangService.getKhachhang(kh.getMakh());
            model.addAttribute("khachhang", khtam);
            ArrayList<Donhang> dsdh=new ArrayList<Donhang>();
            for(Donhang dh :khtam.getDonhangs())
                if(dh.getTinhtrang()!=3)
                    dsdh.add(dh);
            session.removeAttribute("account");
            session.setAttribute("account", khtam);
            model.addAttribute("donhangs",dsdh);
            return "myaccount";
        }
        
        return "dangnhap";
    }
    
    @RequestMapping("dangnhap")
    public String dangNhap(Model model,HttpServletRequest request,HttpSession session){
        String pass=request.getParameter("pass");
        String email=request.getParameter("email");
        Khachhang kh=khachhangService.getKhachhang(pass, email);
        if(kh!=null){
            session.setAttribute("account", kh);
            model.addAttribute("khachhang",kh);
            ArrayList<Donhang> dsdh=new ArrayList<Donhang>();
            for(Donhang dh :kh.getDonhangs())
                if(dh.getTinhtrang()!=3)
                    dsdh.add(dh);
            model.addAttribute("donhangs",dsdh);
             return "myaccount";
        }
        return "dangnhap";
        
    }
    @RequestMapping("dangxuat")
    public String dangXuat(HttpSession session){
        if(session.getAttribute("account")!=null){
            session.removeAttribute("account");
            session.removeAttribute("cart");
            return "redirect:dangnhap.html";
        }
        return "redirect:../";
    }
    @RequestMapping("donhang")
    public String quanlyDonhangs(Model model,HttpSession session){
        if(session.getAttribute("account")!=null){
              Khachhang kh=(Khachhang) session.getAttribute("account");
            model.addAttribute("khachhang", kh);
            Khachhang khtam=khachhangService.getKhachhang(kh.getPassword(), kh.getEmail());
            ArrayList<Donhang> dsdh=new ArrayList<Donhang>();
            for(Donhang dh :khtam.getDonhangs())
                if(dh.getTinhtrang()!=3)
                    dsdh.add(dh);
            model.addAttribute("donhangs",dsdh);
            return "quanlydonhang";
        }
      return "redirect:../";
        
    }
    @RequestMapping("diachi")
    public String getDiachi(Model model,HttpSession session){
        if(session.getAttribute("account")!=null)
        {
             Khachhang kh=(Khachhang) session.getAttribute("account");
            
            model.addAttribute("khachhang", kh);
            
            
            return "diachi";
        }
        return "redirect:../";
    }
    @RequestMapping("capnhat")
    public String capnhat(Model model, HttpSession session, HttpServletRequest request){
        if(session.getAttribute("account")!=null)
        {
            //cap nhat di chi khach hang
            String diachi=request.getParameter("diachi");
            Khachhang kh=(Khachhang) session.getAttribute("account");
            Khachhang k=khachhangService.getKhachhang(kh.getEmail());
            if(k!=null && !diachi.contentEquals("")){
                k.setDiachi(diachi);
                khachhangService.updateKhachhang(k);
                
                session.removeAttribute("account");
                session.setAttribute("account",k);
            }
        }
        return "redirect:diachi.html";
    }
    
}
