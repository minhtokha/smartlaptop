/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.Loaisanpham;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.LoaisanphamService;
import service.UserService;

/**
 *
 * @author MINH TO
 */
@Controller
@RequestMapping("admin")
public class AdminController {
    @Autowired 
    private UserService userService;
    @Autowired
    private LoaisanphamService loaisanphamService;
    
    @RequestMapping(method=RequestMethod.GET)
    public String adminLogin(Model model){
        model.addAttribute("error","yeu cam");
   
        return "login";
    }
    @RequestMapping(value="/login" ,method=RequestMethod.POST)
    public String indexAdmin(HttpServletRequest request, Model model,HttpSession session) throws NoSuchAlgorithmException{
        String user1=request.getParameter("username");
        String pass1=request.getParameter("password");
        if(userService.checkAdmin(user1, pass1)){
            
            
            session.setAttribute("admin",user1 );
            return "admin";
        }
        
        model.addAttribute("error", "Ten dang nhap hoac mat khau cua ban bi sai");
        return "redirect:/admin.html";
        
        
    }
    @RequestMapping("loaisanpham")
    public String indexLoaisanpham(Model model){
        List<Loaisanpham> ls=loaisanphamService.getLoaisanphams();
        model.addAttribute("loaisanphams", ls);
        return "loaisanpham";
    }
    @RequestMapping("loaisanpham/sua") 
    public String suaLoaisanpham(Model model,HttpServletRequest request){
        String k=request.getParameter("id");
        int ma=Integer.parseInt(k);
        Loaisanpham ls=loaisanphamService.getLoaisanpham(ma);
        model.addAttribute("loaisanpham", ls);
        return "loaisanphamform";
    }
     @RequestMapping("loaisanpham/them") 
     public String themLoaisanpham(Model model,HttpServletRequest request){
        
        model.addAttribute("loaisanpham", new Loaisanpham());
        return "loaisanphamform";
    }
     @RequestMapping("loaisanpham/capnhat") 
     public String capnhatLoaisanpham(@ModelAttribute("loaisanpham") Loaisanpham ls,
            HttpServletRequest request,HttpSession session){
         String admin=(String) session.getAttribute("admin");
        if(admin==null){
            return "redirect:/admin.html";
        }
        loaisanphamService.suaLoaisanpham(ls);
        return "redirect:/admin/sanpham.html";
    }
     @RequestMapping("loaisanpham/xoa") 
     public String xoaLoaisanpham(HttpServletRequest request){
         String id=request.getParameter("id");
         int cod=Integer.parseInt(id);
         loaisanphamService.xoaLoaisanpham(cod);
             
         return "redirect:/admin/loaisanpham.html";
         
     }
     
}
