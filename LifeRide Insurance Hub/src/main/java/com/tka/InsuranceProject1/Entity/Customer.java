package com.tka.InsuranceProject1.Entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String firstName;
    private String middleName;
    private String lastName;
    private String email;
    private String password;
    private String confirmPassword;
    private long mobileNumber;
    private String photo;

    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonManagedReference
    private List<Cpolicy> policies = new ArrayList<>();

    public Customer() {
    }

    // Other getters and setters

    

    // Add/Remove policy methods
    public void addPolicy(Cpolicy policy) {
        policies.add(policy);
        policy.setCustomer(this);
    }

    @Override
	public String toString() {
		return "Customer [id=" + id + ", firstName=" + firstName + ", middleName=" + middleName + ", lastName="
				+ lastName + ", email=" + email + ", password=" + password + ", confirmPassword=" + confirmPassword
				+ ", mobileNumber=" + mobileNumber + ", photo=" + photo + ", policies=" + policies + "]";
	}

	public void removePolicy(Cpolicy policy) {
        policies.remove(policy);
        policy.setCustomer(null);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public long getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(long mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public List<Cpolicy> getPolicies() {
        return policies;
    }

    public void setPolicies(List<Cpolicy> policies) {
        this.policies = policies;
    }
}
