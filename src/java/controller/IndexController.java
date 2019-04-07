/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.*;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.DonhangService;
import service.LoaisanphamService;
import service.NhasanxuatService;
import service.SanphamService;
import util.DonhangEncodingUtil;

/**
 *
 * @author MINH TO
 */
@Controller
@RequestMapping("index")
public class IndexController {
    @Autowired 
    private SanphamService sanphamService;
    @Autowired
    private LoaisanphamService loaisanphamService;
    @Autowired
    private NhasanxuatService nhasanxuatService;
    @Autowired
    private DonhangService donhangService;
    
    @RequestMapping(method=RequestMethod.GET)
    public String index(Model model,HttpServletRequest request){
        
        int total=6;
        int code;
         String id="0";
        if(request==null)
        {
            
             code=0;
        }else {
          
            code=Integer.parseInt(id);
        }
        if(code==1||code==0){}
        else {
            code=(code-1)*total+1;  
        }
        model.addAttribute("dsSanpham", sanphamService.getDsSanpham(code,total));
        model.addAttribute("dsLoaisanpham", loaisanphamService.getLoaisanphams());
        model.addAttribute("dsNhasanxuat",nhasanxuatService.getNhasanxuats() );
        return "index";
    }
    @RequestMapping("nhasanxuat")
    public String sanphamsOfNhasanxuat( Model model,HttpServletRequest request){
        String code=request.getParameter("id");
        int id=Integer.parseInt(code);
        model.addAttribute("id", id);
        model.addAttribute("nsx", nhasanxuatService.getNhasanuxat(id));
        model.addAttribute("dsLoaisanpham", loaisanphamService.getLoaisanphams());
        model.addAttribute("dsNhasanxuat",nhasanxuatService.getNhasanxuats() );
        
        return "productOfCategory";
    }
    
    @RequestMapping("loaisanpham")
    public String sanphamsOfLoaisanpham( Model model,HttpServletRequest request){
        String code=request.getParameter("id");
        int id=Integer.parseInt(code);
        model.addAttribute("id", id);
        model.addAttribute("lsp", loaisanphamService.getLoaisanpham(id));
        model.addAttribute("dsLoaisanpham", loaisanphamService.getLoaisanphams());
        model.addAttribute("dsNhasanxuat",nhasanxuatService.getNhasanxuats() );
        
        return "productOfCategory";
    }
    
    @RequestMapping("product")
    public String productDeail(Model model, HttpServletRequest request){
        String code=request.getParameter("id");
        int id=Integer.parseInt(code);
        Sanpham sanpham=sanphamService.getSanpham(id);
        Nhasanxuat nsx=sanpham.getNhasanxuat();
       model.addAttribute("nsx", nhasanxuatService.getNhasanuxat(nsx.getMansx()));
        model.addAttribute("sanpham", sanpham);
        model.addAttribute("dsLoaisanpham", loaisanphamService.getLoaisanphams());
        model.addAttribute("dsNhasanxuat",nhasanxuatService.getNhasanxuats() );
        return "product";
    }
    @RequestMapping("search")
    public String seach(Model model,HttpServletRequest request){
        String search=request.getParameter("search");
        
        if(search!="" &&search.length()>=2 && search.substring(0,2).contentEquals("DH")){
            int code=DonhangEncodingUtil.getDonhang(search);
            if(code!=-1){
                Donhang dh=donhangService.getDonhang(code);
                if(dh!=null&& DonhangEncodingUtil.checkAccount(search, dh) )
                  model.addAttribute("dh", dh);
                else model.addAttribute("kq","Tìm kiếm: 0 kết quả");
                 return "index";
            }
            model.addAttribute("kq","Tìm kiếm: 0 kết quả");
            return "index";        
        }
         return "redirect:../";
    }
    
    @ExceptionHandler(value=NullPointerException.class)
    public String handerNullPointerException(){
        return "error404";
    }
}
