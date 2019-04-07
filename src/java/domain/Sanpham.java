package domain;
// Generated Apr 7, 2019 10:23:46 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Sanpham generated by hbm2java
 */
public class Sanpham  implements java.io.Serializable {


     private Integer masp;
     private Loaisanpham loaisanpham;
     private Nhasanxuat nhasanxuat;
     private String ten;
     private String mota;
     private String hinhanh;
     private double gia;
     private int luongton;
     private Set<Ctdonhang> ctdonhangs = new HashSet<Ctdonhang>(0);

    public Sanpham() {
    }

	
    public Sanpham(Nhasanxuat nhasanxuat, String ten, String mota, String hinhanh, double gia, int luongton) {
        this.nhasanxuat = nhasanxuat;
        this.ten = ten;
        this.mota = mota;
        this.hinhanh = hinhanh;
        this.gia = gia;
        this.luongton = luongton;
    }
    public Sanpham(Loaisanpham loaisanpham, Nhasanxuat nhasanxuat, String ten, String mota, String hinhanh, double gia, int luongton, Set<Ctdonhang> ctdonhangs) {
       this.loaisanpham = loaisanpham;
       this.nhasanxuat = nhasanxuat;
       this.ten = ten;
       this.mota = mota;
       this.hinhanh = hinhanh;
       this.gia = gia;
       this.luongton = luongton;
       this.ctdonhangs = ctdonhangs;
    }
   
    public Integer getMasp() {
        return this.masp;
    }
    
    public void setMasp(Integer masp) {
        this.masp = masp;
    }
    public Loaisanpham getLoaisanpham() {
        return this.loaisanpham;
    }
    
    public void setLoaisanpham(Loaisanpham loaisanpham) {
        this.loaisanpham = loaisanpham;
    }
    public Nhasanxuat getNhasanxuat() {
        return this.nhasanxuat;
    }
    
    public void setNhasanxuat(Nhasanxuat nhasanxuat) {
        this.nhasanxuat = nhasanxuat;
    }
    public String getTen() {
        return this.ten;
    }
    
    public void setTen(String ten) {
        this.ten = ten;
    }
    public String getMota() {
        return this.mota;
    }
    
    public void setMota(String mota) {
        this.mota = mota;
    }
    public String getHinhanh() {
        return this.hinhanh;
    }
    
    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }
    public double getGia() {
        return this.gia;
    }
    
    public void setGia(double gia) {
        this.gia = gia;
    }
    public int getLuongton() {
        return this.luongton;
    }
    
    public void setLuongton(int luongton) {
        this.luongton = luongton;
    }
    public Set<Ctdonhang> getCtdonhangs() {
        return this.ctdonhangs;
    }
    
    public void setCtdonhangs(Set<Ctdonhang> ctdonhangs) {
        this.ctdonhangs = ctdonhangs;
    }




}

