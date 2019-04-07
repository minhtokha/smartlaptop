/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.Loaisanpham;
import domain.Nhasanxuat;
import domaininfo.*;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.NhasanxuatService;

/**
 *
 * @author MINH TO
 */
@Controller
@RequestMapping("admin")
public class NhasanxuatController {
     @Autowired
    private NhasanxuatService nhasanxuatService;
      @RequestMapping("nhasanxuat")
    public String indexLoaisanpham(Model model){
        List<Nhasanxuat> lnsx=nhasanxuatService.getNhasanxuats();
        model.addAttribute("nhasanxuats", lnsx);
        return "nhasanxuat";
    }
    @RequestMapping("nhasanxuat/sua") 
    public String suaNhasanxuat(Model model,HttpServletRequest request,HttpSession session){
        String k=request.getParameter("id");
        int ma=Integer.parseInt(k);
         String admin=(String) session.getAttribute("admin");
        if(admin==null){
            return "redirect:/admin.html";
        }
        String code=request.getParameter("id");
        int id=Integer.parseInt(code);
        Nhasanxuat nsx=nhasanxuatService.getNhasanuxat(id);
        NhasanxuatInfo nsxInfo=new NhasanxuatInfo();
        nsxInfo.setMansx(id);
        nsxInfo.setTennsx(nsx.getTennsx());
        
        String tenhinhanh=nsx.getHinhanh();
        model.addAttribute("tenhinhanh",tenhinhanh);
        model.addAttribute("nhasanxuat", nsxInfo);
        return "nhasanxuatform";

    }
     @RequestMapping("nhasanxuat/them") 
     public String themNhasanxuat(Model model,HttpServletRequest request){
        
        model.addAttribute("nhasanxuat", new Nhasanxuat());
        return "nhasanxuatform";
    }
     @RequestMapping("nhasanxuat/capnhat") 
     public String capnhatNhasanxuat(@ModelAttribute("nhasanxuat") NhasanxuatInfo ls,
            HttpServletRequest request,HttpSession session,Model model){
          String admin=(String) session.getAttribute("admin");
        if(admin==null){
            return "redirect:/admin.html";
        }
        
        nhasanxuatService.suaNhasanxuat(ls, request);
        return "redirect:/admin/nhasanxuat.html";
    }
     @RequestMapping("nhasanxuat/xoa") 
     public String Xoa(Model model,HttpServletRequest request){
        String code =request.getParameter("id");
        int id=Integer.parseInt(code);
        nhasanxuatService.xoa(id);
        return "redirect:/admin/nhasanxuat.html";
    }
}
