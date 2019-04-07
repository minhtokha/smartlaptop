package domain;
// Generated Apr 7, 2019 10:23:46 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Khachhang generated by hbm2java
 */
public class Khachhang  implements java.io.Serializable {


     private Integer makh;
     private String password;
     private String tenkhachhang;
     private String diachi;
     private String sdt;
     private String email;
     private Set<Donhang> donhangs = new HashSet<Donhang>(0);

    public Khachhang() {
    }

    public Khachhang(String password, String tenkhachhang, String diachi, String sdt, String email, Set<Donhang> donhangs) {
       this.password = password;
       this.tenkhachhang = tenkhachhang;
       this.diachi = diachi;
       this.sdt = sdt;
       this.email = email;
       this.donhangs = donhangs;
    }
   
    public Integer getMakh() {
        return this.makh;
    }
    
    public void setMakh(Integer makh) {
        this.makh = makh;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getTenkhachhang() {
        return this.tenkhachhang;
    }
    
    public void setTenkhachhang(String tenkhachhang) {
        this.tenkhachhang = tenkhachhang;
    }
    public String getDiachi() {
        return this.diachi;
    }
    
    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }
    public String getSdt() {
        return this.sdt;
    }
    
    public void setSdt(String sdt) {
        this.sdt = sdt;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public Set<Donhang> getDonhangs() {
        return this.donhangs;
    }
    
    public void setDonhangs(Set<Donhang> donhangs) {
        this.donhangs = donhangs;
    }




}

