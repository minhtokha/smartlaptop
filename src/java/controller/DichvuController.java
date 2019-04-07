/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.*;
import domaininfo.DichvuInfo;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.DichvuService;

/**
 *
 * @author MINH TO
 */
@Controller

public class DichvuController {
    @Autowired
    private DichvuService dichvuService;
    @RequestMapping("dichvu/tintuc")
    public String giaohang(Model model){
        model.addAttribute("dsdv", dichvuService.getDichvus());
        return "dichvu";
    }
    @RequestMapping("dichvu/tintuc/dv")
    public String getDichvu(Model model,HttpServletRequest request){
        String code=request.getParameter("id");
        int id=Integer.parseInt(code);
        model.addAttribute("dv", dichvuService.getDichvu(id));
        return "dichvudetail";
    }
    //
    @RequestMapping("admin/dichvu")
    public String getdsDichvu(Model model){
        model.addAttribute("dsdv", dichvuService.getDichvus());
        return "dsdv";
    }
    @RequestMapping("admin/dichvu/sua")
    public String sua(Model model , HttpServletRequest request){
         String code=request.getParameter("id");
        int id=Integer.parseInt(code);
        Thongtindichvu dv=dichvuService.getDichvu(id);
        DichvuInfo dvInfo=new DichvuInfo();
        dvInfo.setMatt(id);
        dvInfo.setTentt(dv.getTentt());
        dvInfo.setNoidung(dv.getNoidung());
        
        String tenhinhanh,tenhinhanh1,tenhinhanh2,tenhinhanh3;
        tenhinhanh =dv.getHinhanh();
        model.addAttribute("tenhinhanh",tenhinhanh);
        model.addAttribute("dichvu", dvInfo);
        return "dichvuform";
    }
    @RequestMapping("admin/dichvu/them")
    public String them(Model model ){
         
         
        DichvuInfo dv=new DichvuInfo();
      
        model.addAttribute("dichvu", dv);
        return "dichvuform";
    }
     @RequestMapping(value="admin/dichvu/capnhatdv",method=RequestMethod.POST)
     public String capnhatDichvu(@ModelAttribute("dichvu") DichvuInfo dichvu,HttpServletRequest request){
         
         
         dichvuService.updateDichvu(dichvu,request);
         return "redirect:/admin/dichvu.html";
     }
      @RequestMapping("admin/dichvu/xoa")
      public String xoaDichvu(HttpServletRequest request){
          String id=request.getParameter("id");
          int code=Integer.parseInt(id);
          
          dichvuService.xoa(code);
          return "redirect:/admin/dichvu.html";
      }
}
