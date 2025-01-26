package com.tka.InsuranceProject1.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class VahicalDtails {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private long PolicyNuber;
private String vehicalNumber;
private String vehicalmodel;
private String vehicalmanufacture;
private int yearofFacuring;
private long chassinumber;
private  String fuleType;
private String vehicalbodyType;
private String CubikCapacity;
private String VehicalColor;
private String policyReceipt;
private String uploadDoucument;
private String CoverPriodStart;
private String CoverperopdEnd;

@ManyToOne
@JoinColumn(name = "customer_id", referencedColumnName = "id")

private Customer customer;

public VahicalDtails() {
	super();
	
}

public VahicalDtails(long policyNuber, String vehicalNumber, String vehicalmodel, String vehicalmanufacture,
		int yearofFacuring, long chassinumber, String fuleType, String vehicalbodyType, String cubikCapacity,
		String vehicalColor, String policyReceipt, String uploadDoucument, String coverPriodStart,
		String coverperopdEnd, Customer customer) {
	super();
	PolicyNuber = policyNuber;
	this.vehicalNumber = vehicalNumber;
	this.vehicalmodel = vehicalmodel;
	this.vehicalmanufacture = vehicalmanufacture;
	this.yearofFacuring = yearofFacuring;
	this.chassinumber = chassinumber;
	this.fuleType = fuleType;
	this.vehicalbodyType = vehicalbodyType;
	CubikCapacity = cubikCapacity;
	VehicalColor = vehicalColor;
	this.policyReceipt = policyReceipt;
	this.uploadDoucument = uploadDoucument;
	CoverPriodStart = coverPriodStart;
	CoverperopdEnd = coverperopdEnd;
	this.customer = customer;
}

public long getPolicyNuber() {
	return PolicyNuber;
}

public void setPolicyNuber(long policyNuber) {
	PolicyNuber = policyNuber;
}

public String getVehicalNumber() {
	return vehicalNumber;
}

public void setVehicalNumber(String vehicalNumber) {
	this.vehicalNumber = vehicalNumber;
}

public String getVehicalmodel() {
	return vehicalmodel;
}

public void setVehicalmodel(String vehicalmodel) {
	this.vehicalmodel = vehicalmodel;
}

public String getVehicalmanufacture() {
	return vehicalmanufacture;
}

public void setVehicalmanufacture(String vehicalmanufacture) {
	this.vehicalmanufacture = vehicalmanufacture;
}

public int getYearofFacuring() {
	return yearofFacuring;
}

public void setYearofFacuring(int yearofFacuring) {
	this.yearofFacuring = yearofFacuring;
}

public long getChassinumber() {
	return chassinumber;
}

public void setChassinumber(long chassinumber) {
	this.chassinumber = chassinumber;
}

public String getFuleType() {
	return fuleType;
}

public void setFuleType(String fuleType) {
	this.fuleType = fuleType;
}

public String getVehicalbodyType() {
	return vehicalbodyType;
}

public void setVehicalbodyType(String vehicalbodyType) {
	this.vehicalbodyType = vehicalbodyType;
}

public String getCubikCapacity() {
	return CubikCapacity;
}

public void setCubikCapacity(String cubikCapacity) {
	CubikCapacity = cubikCapacity;
}

public String getVehicalColor() {
	return VehicalColor;
}

public void setVehicalColor(String vehicalColor) {
	VehicalColor = vehicalColor;
}

public String getPolicyReceipt() {
	return policyReceipt;
}

public void setPolicyReceipt(String policyReceipt) {
	this.policyReceipt = policyReceipt;
}

public String getUploadDoucument() {
	return uploadDoucument;
}

public void setUploadDoucument(String uploadDoucument) {
	this.uploadDoucument = uploadDoucument;
}

public String getCoverPriodStart() {
	return CoverPriodStart;
}

public void setCoverPriodStart(String coverPriodStart) {
	CoverPriodStart = coverPriodStart;
}

public String getCoverperopdEnd() {
	return CoverperopdEnd;
}

public void setCoverperopdEnd(String coverperopdEnd) {
	CoverperopdEnd = coverperopdEnd;
}

public Customer getCustomer() {
	return customer;
}

public void setCustomer(Customer customer) {
	this.customer = customer;
}

@Override
public String toString() {
	return "VahicalDtails [PolicyNuber=" + PolicyNuber + ", vehicalNumber=" + vehicalNumber + ", vehicalmodel="
			+ vehicalmodel + ", vehicalmanufacture=" + vehicalmanufacture + ", yearofFacuring=" + yearofFacuring
			+ ", chassinumber=" + chassinumber + ", fuleType=" + fuleType + ", vehicalbodyType=" + vehicalbodyType
			+ ", CubikCapacity=" + CubikCapacity + ", VehicalColor=" + VehicalColor + ", policyReceipt=" + policyReceipt
			+ ", uploadDoucument=" + uploadDoucument + ", CoverPriodStart=" + CoverPriodStart + ", CoverperopdEnd="
			+ CoverperopdEnd + ", customer=" + customer + "]";
}



}
