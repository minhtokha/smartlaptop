/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validator;

import domain.*;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author MINH TO
 */
public class KhachhangValidator implements Validator{

    @Override
    public boolean supports(Class<?> type) {
         return Khachhang.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Khachhang kh=(Khachhang)o;
        ValidationUtils.rejectIfEmpty(errors,"tenkhachhang","tenkhachhang.required");
         ValidationUtils.rejectIfEmpty(errors,"diachi","diachi.required");
         ValidationUtils.rejectIfEmpty(errors,"sdt","sdt.required");
         ValidationUtils.rejectIfEmpty(errors,"email","email.required");
       
    }
    
    
}
