/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domaininfo;

import java.util.Date;
import java.util.List;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author MINH TO
 */
public class DichvuInfo {
    private Integer matt;
     private String tentt;
     private String noidung;
     private String noidung1;
     private String noidung2;
     private String noidung3;

     private List<MultipartFile> hinhanhs;

    public DichvuInfo(Integer matt, String tentt, String noidung, String noidung1, String noidung2, String noidung3, List<MultipartFile> hinhanhs) {
        this.matt = matt;
        this.tentt = tentt;
        this.noidung = noidung;
        this.noidung1 = noidung1;
        this.noidung2 = noidung2;
        this.noidung3 = noidung3;
        this.hinhanhs = hinhanhs;
    }

    public DichvuInfo() {
    }

    public Integer getMatt() {
        return matt;
    }

    public String getTentt() {
        return tentt;
    }

    public String getNoidung() {
        return noidung;
    }

    public String getNoidung1() {
        return noidung1;
    }

    public String getNoidung2() {
        return noidung2;
    }

    public String getNoidung3() {
        return noidung3;
    }

    public List<MultipartFile> getHinhanhs() {
        return hinhanhs;
    }

    public void setMatt(Integer matt) {
        this.matt = matt;
    }

    public void setTentt(String tentt) {
        this.tentt = tentt;
    }

    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }

    public void setNoidung1(String noidung1) {
        this.noidung1 = noidung1;
    }

    public void setNoidung2(String noidung2) {
        this.noidung2 = noidung2;
    }

    public void setNoidung3(String noidung3) {
        this.noidung3 = noidung3;
    }

    public void setHinhanhs(List<MultipartFile> hinhanhs) {
        this.hinhanhs = hinhanhs;
    }

    
}
