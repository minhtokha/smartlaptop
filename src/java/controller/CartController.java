/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import domain.*;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.DonhangService;
import service.KhachhangService;
import service.LoaisanphamService;
import service.NhasanxuatService;
import service.SanphamService;
import util.DonhangEncodingUtil;
import validator.KhachhangValidator;

/**
 *
 * @author MINH TO
 */
@SuppressWarnings("unchecked")
@Controller

public class CartController {
    
    @Autowired
    private SanphamService sanphamService;
    @Autowired
    private LoaisanphamService loaisanphamService;
    @Autowired
    private NhasanxuatService nhasanxuatService;
    @Autowired
    private DonhangService donhangService;
    @Autowired
    private KhachhangService khachhangService;
     @RequestMapping("cart")
     public String cartIndex(Model model,HttpSession session){
         if(session.getAttribute("account")!=null){
             Khachhang kh=(Khachhang) session.getAttribute("account");
        model.addAttribute("khachhang", kh);
         }
         else model.addAttribute("khachhang", new Khachhang());
         model.addAttribute("dsSanpham", sanphamService.getDsSanpham(0,18));
        model.addAttribute("dsLoaisanpham", loaisanphamService.getLoaisanphams());
        model.addAttribute("dsNhasanxuat",nhasanxuatService.getNhasanxuats() );
         return "cartIndex";
     }
     
     @RequestMapping("cart/buy")
     public String buy(HttpServletRequest request ,HttpSession session){
         String id=request.getParameter("id");
         int code=Integer.parseInt(id);
         if(session.getAttribute("cart")==null){
             List<Ctdonhang> cart=new ArrayList<Ctdonhang>();
             Sanpham sp=sanphamService.getSanpham(code);
             if(sp!=null){
                 cart.add(new Ctdonhang(null, sp, 1, sp.getGia()));
             }
             session.setAttribute("cart", cart);
         }else {
             List<Ctdonhang> cart=(List<Ctdonhang>) session.getAttribute("cart");
             int index=this.exists(code, cart);
             if(index!=-1){
                 int soluong=cart.get(index).getSoluong()+1;
                cart.get(index).setSoluong(soluong);
             }else {
                 Sanpham sp=sanphamService.getSanpham(code);
                 cart.add(new Ctdonhang(null, sp, 1, sp.getGia()));
             }
             
             session.setAttribute("cart", cart);
         }
         return "redirect:/cart.html";
     }
     @RequestMapping("cart/remove")
     public String remove(HttpServletRequest request, HttpSession session){
         String id=request.getParameter("id");
         int code=Integer.parseInt(id);
         List<Ctdonhang> cart=(List<Ctdonhang>) session.getAttribute("cart");
         int index=this.exists(code, cart);
         if(index!=-1){
             cart.remove(index);
             session.setAttribute("cart", cart);
         }
         return "redirect:/cart.html";
     }
     
     private int exists(int id, List<Ctdonhang> cart){
         for(int i=0;i<cart.size();i++){
             if(cart.get(i).getSanpham().getMasp().equals(id))
                 return i;
         }
         return -1;
     }
     
     @RequestMapping(value="cart/checkout.html", method=RequestMethod.POST)
     public String checkout(Model model,@ModelAttribute("khachhang") Khachhang khachhang,
             BindingResult result,HttpSession session){
         
             KhachhangValidator dv=new KhachhangValidator();
             dv.validate(khachhang, result);
             
         if(result.hasErrors()){
             
             return "redirect:/cart.html";
         }
         Khachhang k=khachhangService.getKhachhang(khachhang.getEmail());
         if(k!=null){
             k.setDiachi(khachhang.getDiachi());
             k.setTenkhachhang(khachhang.getTenkhachhang());
             k.setSdt(khachhang.getSdt());
         }
        khachhangService.updateKhachhang(k);
         Donhang donhang=new Donhang();
         donhang.setTenkhachhang(khachhang.getTenkhachhang());
         donhang.setDiachi(khachhang.getDiachi());
         donhang.setEmail(khachhang.getEmail());
         donhang.setSdt(khachhang.getSdt());
         donhang.setKhachhang(k);
         session.setAttribute("account", k);
         String date=LocalDate.now().format(DateTimeFormatter.ISO_DATE);
         Date d= Date.valueOf(date);
         
         if(session.getAttribute("cart")!=null)
         { 
            List<Ctdonhang> dsct=(List<Ctdonhang>) session.getAttribute("cart");
            Set<Ctdonhang> set = new HashSet <Ctdonhang>(dsct);
            donhang.setCtdonhangs(set);
            Double s=0.0;
            for(Ctdonhang ct: dsct){
                s+=ct.getSotien();
            }
            donhang.setTongtien(s);
         }
         Calendar c1 = Calendar.getInstance();
         c1.setTime(d);
         
         donhang.setNgaydh(d);
         c1.roll(Calendar.DATE, 4);
         donhang.setNgaygiao(c1.getTime());
         double tien=donhang.getTongtien()*1000;
         int t=(int)tien;
         int k1=donhangService.addDonhang(donhang);
        String key= DonhangEncodingUtil.ecdCoding(k1, donhang);
         if(k1>0){
             
             model.addAttribute("dh", donhang);
             model.addAttribute("key",key);
             model.addAttribute("tien",t);
             session.removeAttribute("cart");
             
             return "checkout";
         }else return "redirect:/cart.html";
        
         
     }
     
     
}
