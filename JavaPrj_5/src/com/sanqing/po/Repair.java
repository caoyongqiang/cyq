package com.sanqing.po;

import java.io.Serializable;
import java.util.Date;

public class Repair implements Serializable {
    private Long id;	//ӦƸ��Ա���
    private String name;//ӦƸ��Ա����
    private Integer repairTimes;//����
    private String repair;	//ְλ
    private String car;//��ѧרҵ
    private String plateNumber;//��������
    private String repairType;//ѧ��
    private String repairCost;	//��ҵѧУ
    private String tel;		//�绰����
    private String email;	//Email��ַ
    private Date createtime;//����ʱ��
    private String repairDetail;	//��ϸ����
    private Byte isstock;	//�Ƿ����

    public Repair(Long id,String name, Integer repairTimes, String repair, String car, String plateNumber, String repairType, String repairCost, String tel, String email, Date createtime, String repairDetail, Byte isstock) {
        this.id=id;
        this.name = name;
        this.repairTimes = repairTimes;
        this.repair = repair;
        this.car = car;
        this.plateNumber = plateNumber;
        this.repairType = repairType;
        this.repairCost = repairCost;
        this.tel = tel;
        this.email = email;
        this.createtime = createtime;
        this.repairDetail = repairDetail;
        this.isstock = isstock;
    }
    public Repair() {
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getRepairTimes() {
        return this.repairTimes;
    }

    public void setRepairTimes(Integer repairTimes) {
        this.repairTimes = repairTimes;
    }

    public String getRepair() {
        return this.repair;
    }

    public void setRepair(String repair) {
        this.repair = repair;
    }

    public String getCar() {
        return this.car;
    }

    public void setCar(String car) {
        this.car = car;
    }

    public String getPlateNumber() {
        return this.plateNumber;
    }

    public void setPlateNumber(String plateNumber) {
        this.plateNumber = plateNumber;
    }

    public String getRepairType() {
        return this.repairType;
    }

    public void setRepairType(String repairType) {
        this.repairType = repairType;
    }

    public String getRepairCost() {
        return this.repairCost;
    }

    public void setRepairCost(String repairCost) {
        this.repairCost = repairCost;
    }

    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getCreatetime() {
        return this.createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getRepairDetail() {
        return this.repairDetail;
    }

    public void setRepairDetail(String repairDetail) {
        this.repairDetail = repairDetail;
    }

    public Byte getIsstock() {
        return this.isstock;
    }

    public void setIsstock(Byte isstock) {
        this.isstock = isstock;
    }

    public String toString() {
        StringBuffer toStr = new StringBuffer();
        toStr.append("[Repair] = [\n");
        toStr.append("    id = " + this.id + ";\n");
        toStr.append("    name = " + this.name + ";\n");
        toStr.append("    repairTimes = " + this.repairTimes + ";\n");
        toStr.append("    repair = " + this.repair + ";\n");
        toStr.append("    car = " + this.car + ";\n");
        toStr.append("    plateNumber = " + this.plateNumber + ";\n");
        toStr.append("    repairType = " + this.repairType + ";\n");
        toStr.append("    repairCost = " + this.repairCost + ";\n");
        toStr.append("    tel = " + this.tel + ";\n");
        toStr.append("    email = " + this.email + ";\n");
        toStr.append("    createtime = " + this.createtime+ ";\n");
        toStr.append("    repairDetail = " + this.repairDetail+ ";\n");
        toStr.append("    isstock = " + this.isstock + ";\n");
        toStr.append("    ];\n");
        return toStr.toString();
    }

}
