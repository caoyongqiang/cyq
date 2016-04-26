package com.sanqing.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import com.sanqing.po.Users;
import com.sanqing.tool.DateUtil;

/**
 * @author BWeiMing
 *
 */
public class UsersForm extends ActionForm {
    /**
     * @return Returns the content.
     */
    public String getContent() {
        return content;
    }
    /**
     * @param content The content to set.
     */
    public void setContent(String content) {
        this.content = content;
    }
    /** identifier field */
    private Long id;

    /** nullable persistent field */
    private String username;
    
    /** nullable persistent field */
    private String phoneNumber;

    /** nullable persistent field */
    private String password;

    /** nullable persistent field */
    private Integer sex;

    /** nullable persistent field */
    private String idCard;

    /** nullable persistent field */
    private String createtime;

    /** nullable persistent field */
    private Byte isadmin;

    /** nullable persistent field */
    private String content;

    /**
     * @return Returns the createtime.
     */
    public String getCreatetime() {
        return createtime;
    }
    /**
     * @param createtime The createtime to set.
     */
    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }
    /**
     * @return Returns the id.
     */
    public Long getId() {
        return id;
    }
    /**
     * @param id The id to set.
     */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * @return Returns the isadmin.
     */
    public Byte getIsadmin() {
        return isadmin;
    }
    /**
     * @param isadmin The isadmin to set.
     */
    public void setIsadmin(Byte isadmin) {
        this.isadmin = isadmin;
    }
    /**
     * @return Returns the password.
     */
    public String getPassword() {
        return password;
    }
    /**
     * @param password The password to set.
     */
    public void setPassword(String password) {
        this.password = password;
    }
    /**
     * @return Returns the username.
     */
    public String getUsername() {
        return username;
    }
    /**
     * @param username The username to set.
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return Returns the phoneNumber.
     */
    public String getPhoneNumber() {
        return phoneNumber;
    }
    /**
     * @param phoneNumber The phoneNumber to set.
     */
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
    public void reset(ActionMapping arg0, HttpServletRequest arg1) {
        this.id=null;
        this.username=null;
        this.phoneNumber = null;
        this.password=null;
        this.isadmin=null;
        this.createtime=null;
        this.content=null;
        this.sex=null;
        this.idCard=null;

    }

    public ActionErrors validate(ActionMapping arg0, HttpServletRequest arg1) {
        return null;
    }

    public String toString() {
        StringBuffer toStr = new StringBuffer();
        toStr.append("[UsersForm] = [\n");
        toStr.append("    id = " + this.id + ";\n");
        toStr.append("    username = " + this.username + ";\n");
        toStr.append("    phoneNumber = " + this.phoneNumber + ";\n");
        toStr.append("    password = " + this.password + ";\n");
        toStr.append("    sex = " + this.sex + ";\n");
        toStr.append("    idCard = " + this.idCard+ ";\n");
        toStr.append("    createtime = " + this.createtime+ ";\n");
        toStr.append("    isadmin = " + this.isadmin + ";\n");
        toStr.append("    content = " + this.content + ";\n");
        toStr.append("    ];\n");
        return toStr.toString();
    }

    /**
     * @return Returns the idCard.
     */
    public String getIdCard() {
        return idCard;
    }
    /**
     * @param idCard The idCard to set.
     */
    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }
    /**
     * @return Returns the sex.
     */
    public Integer getSex() {
        return sex;
    }
    /**
     * @param sex The sex to set.
     */
    public void setSex(Integer sex) {
        this.sex = sex;
    }
    public Users populate(){
        Users u=new Users();
        u.setId(getId());
        u.setIsadmin(getIsadmin());
        u.setContent(getContent());
        u.setUsername(getUsername());
        u.setPhoneNumber(getPhoneNumber());
        u.setPassword(getPassword());
        u.setSex(getSex());
        u.setIdCard(getIdCard());
        u.setCreatetime(DateUtil.parseToDate(getCreatetime(),DateUtil.yyyyMMddHHmmss));
        return u;
    }
}
