/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domaininfo;

import domain.Loaisanpham;
import domain.Nhasanxuat;
import java.util.List;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author MINH TO
 */
public class SanphamInfo {
    private Integer masp;
     private Loaisanpham loaisanpham;
     private Nhasanxuat nhasanxuat;
     private String ten;
     private String mota;
     private List<MultipartFile> hinhanhs;
     private double gia;
     private int luongton;

    public SanphamInfo() {
    }

    public SanphamInfo(Integer masp, Loaisanpham loaisanpham, Nhasanxuat nhasanxuat, String ten, String mota, List<MultipartFile> hinhanhs, double gia, int luongton) {
        this.masp = masp;
        this.loaisanpham = loaisanpham;
        this.nhasanxuat = nhasanxuat;
        this.ten = ten;
        this.mota = mota;
        this.hinhanhs = hinhanhs;
        this.gia = gia;
        this.luongton = luongton;
    }

    public Integer getMasp() {
        return masp;
    }

    public Loaisanpham getLoaisanpham() {
        return loaisanpham;
    }

    public Nhasanxuat getNhasanxuat() {
        return nhasanxuat;
    }

    public String getTen() {
        return ten;
    }

    public String getMota() {
        return mota;
    }

    public List<MultipartFile> getHinhanhs() {
        return hinhanhs;
    }

    public double getGia() {
        return gia;
    }

    public int getLuongton() {
        return luongton;
    }

    public void setMasp(Integer masp) {
        this.masp = masp;
    }

    public void setLoaisanpham(Loaisanpham loaisanpham) {
        this.loaisanpham = loaisanpham;
    }

    public void setNhasanxuat(Nhasanxuat nhasanxuat) {
        this.nhasanxuat = nhasanxuat;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public void setHinhanhs(List<MultipartFile> hinhanhs) {
        this.hinhanhs = hinhanhs;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public void setLuongton(int luongton) {
        this.luongton = luongton;
    }
     
}
