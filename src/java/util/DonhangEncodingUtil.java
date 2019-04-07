/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import domain.Donhang;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import service.DonhangService;

/**
 *
 * @author MINH TO
 */
public class DonhangEncodingUtil {
    @Autowired
    private DonhangService donhangService;
    public static String ecdCoding(int id,Donhang dh){
        String ma="DH";
        String ten=dh.getTenkhachhang().trim();
        ma+=ten.substring(0,1);
       ma+=id+"";
       return ma;
    }
    //giai ma
    public static int getDonhang(String ma){
        int id=-1;
        String trimMa=ma.trim();
        trimMa=trimMa.substring(3);
        Boolean check=false;
        check=trimMa.matches("\\d+");
        if(check==true){
        id=Integer.valueOf(trimMa);
        }
        return id;
    }
    public static boolean checkAccount(String ma,Donhang dh){
        String code="DH";
        code+=dh.getTenkhachhang().substring(0,1);
        code+=dh.getMadh();
        
        if(ma.contentEquals(code))
            return true;
         return false;
    }
    
}
