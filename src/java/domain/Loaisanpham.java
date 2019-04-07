package domain;
// Generated Apr 7, 2019 10:23:46 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Loaisanpham generated by hbm2java
 */
public class Loaisanpham  implements java.io.Serializable {


     private Integer maloai;
     private String tenloai;
     private String mota;
     private Set<Sanpham> sanphams = new HashSet<Sanpham>(0);

    public Loaisanpham() {
    }

	
    public Loaisanpham(String tenloai, String mota) {
        this.tenloai = tenloai;
        this.mota = mota;
    }
    public Loaisanpham(String tenloai, String mota, Set<Sanpham> sanphams) {
       this.tenloai = tenloai;
       this.mota = mota;
       this.sanphams = sanphams;
    }
   
    public Integer getMaloai() {
        return this.maloai;
    }
    
    public void setMaloai(Integer maloai) {
        this.maloai = maloai;
    }
    public String getTenloai() {
        return this.tenloai;
    }
    
    public void setTenloai(String tenloai) {
        this.tenloai = tenloai;
    }
    public String getMota() {
        return this.mota;
    }
    
    public void setMota(String mota) {
        this.mota = mota;
    }
    public Set<Sanpham> getSanphams() {
        return this.sanphams;
    }
    
    public void setSanphams(Set<Sanpham> sanphams) {
        this.sanphams = sanphams;
    }




}


