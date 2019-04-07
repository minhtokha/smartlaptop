/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import domain.*;
import domaininfo.SanphamInfo;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.http.*;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.DonhangService;
import service.KhachhangService;
import service.SanphamService;

/**
 *
 * @author MINH TO
 */
@Controller
@RequestMapping("admin")
public class DonhangController {
    //admin
    @Autowired
    private DonhangService donhangService;
    @Autowired
    private SanphamService sanphamService;
    @RequestMapping("donhang")
    public String quanlyDonhang(Model model,HttpSession session){
        String admin=(String) session.getAttribute("admin");
        if(admin==null){
            return "redirect:/admin.html";
        }
        model.addAttribute("donhangs", donhangService.getDonhangs());
        return "donhang";
    }
    @RequestMapping("donhang/giaohang")
    public String giaoHang(Model model, HttpServletRequest request,HttpSession session){
        String admin=(String) session.getAttribute("admin");
        if(admin==null){
            return "redirect:/admin.html";
        }
        String id=request.getParameter("id");
        String tt=request.getParameter("t");
        int tt1=Integer.parseInt(tt);
        int code=Integer.parseInt(id);
        Donhang dh=donhangService.getDonhang(code);
        if(dh!=null){
            
            dh.setTinhtrang(tt1);
            if(tt1==5 ||tt1==3 ||tt1==2){
                String date=LocalDate.now().format(DateTimeFormatter.ISO_DATE);
                Date d= Date.valueOf(date);
                dh.setNgaygiao(d);
            }
            if(tt1==4)
            {
                for(Ctdonhang ct: dh.getCtdonhangs())
                {
                    Sanpham sp=ct.getSanpham();
                    int lt=sp.getLuongton()+1;
                    sp.setLuongton(lt);
                    SanphamInfo spinfo=new SanphamInfo();
                    spinfo.setMasp(sp.getMasp());
                   spinfo.setTen(sp.getTen());
                    spinfo.setMota(sp.getMota().trim());
                    spinfo.setGia(sp.getGia());
                    spinfo.setLuongton(sp.getLuongton());
                    spinfo.setLoaisanpham(sp.getLoaisanpham());
                    spinfo.setNhasanxuat(sp.getNhasanxuat());
                    sanphamService.suaSanpham(spinfo, request);
                }
            }
            if(tt1<=5)
            donhangService.updateDonhang(dh);
        }
        return "redirect:/admin/donhang.html";
    }
    @RequestMapping("donhang/chitietdonhang")
    public String getChitietDonhang(Model model,HttpServletRequest request){
        String id=request.getParameter("id");
        int code=Integer.parseInt(id);
        Donhang dh=donhangService.getDonhang(code);
        model.addAttribute("donhang", dh);
        model.addAttribute("ctdonhangs",dh.getCtdonhangs());
        return "chitietdonhang";
    }
    @RequestMapping("thongke")
     public String thongke(Model model, HttpServletRequest request){
         
         String id=request.getParameter("thang");
         
         int thang=Integer.parseInt(id);
          String date=LocalDate.now().format(DateTimeFormatter.ISO_DATE);
         Date d= Date.valueOf(date);
         int nam=d.getYear();
         List<Donhang> dsDh=donhangService.getDonhangsOfMonth(thang,nam);
         double s=0;
         if(dsDh!=null){
             for(Donhang dh: dsDh){
            s+=dh.getTongtien();
        }
         }
        
        model.addAttribute("thang", thang);
        model.addAttribute("tongtien", s);
         model.addAttribute("donhangs",dsDh);
        return "thongke";
     }
//     @RequestMapping("thongke")
//      public String thongke1(Model model){
//           List<Donhang> dsDh=donhangService.getDonhangsCheckout();
//           double s=0;
//         if(dsDh!=null){
//             for(Donhang dh: dsDh){
//            s+=dh.getTongtien();
//        }
//         }
//        
//        
//        model.addAttribute("tongtien", s);
//         model.addAttribute("donhangs",dsDh);
//          return "thongke";
//      }
     
}
