/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domaininfo;

/**
 *
 * @author MINH TO
 */
public class AccountInfo {
    private String ten;
    private String email;
    private String diachi;
     private String sdt;

    public AccountInfo(String ten, String email, String diachi, String sdt) {
        this.ten = ten;
        this.email = email;
        this.diachi = diachi;
        this.sdt = sdt;
    }

    public String getTen() {
        return ten;
    }

    public String getEmail() {
        return email;
    }

    public String getDiachi() {
        return diachi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }
     
}
