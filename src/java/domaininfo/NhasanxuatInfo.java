/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domaininfo;

import java.util.List;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author MINH TO
 */
public class NhasanxuatInfo {
     private Integer mansx;
     private String tennsx;
    private List<MultipartFile> hinhanhs;

    public NhasanxuatInfo(Integer mansx, String tennsx, List<MultipartFile> hinhanhs) {
        this.mansx = mansx;
        this.tennsx = tennsx;
        this.hinhanhs = hinhanhs;
    }

    public Integer getMansx() {
        return mansx;
    }

    public String getTennsx() {
        return tennsx;
    }

    public List<MultipartFile> getHinhanhs() {
        return hinhanhs;
    }

    public void setMansx(Integer mansx) {
        this.mansx = mansx;
    }

    public void setTennsx(String tennsx) {
        this.tennsx = tennsx;
    }

    public void setHinhanhs(List<MultipartFile> hinhanhs) {
        this.hinhanhs = hinhanhs;
    }

    public NhasanxuatInfo() {
    }
    
}
