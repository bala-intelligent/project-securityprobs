package com.niit.foodcart.model;

//import javax.persistence.Entity;
//import javax.persistence.Id;
//import javax.persistence.Table;
import javax.persistence.*;


import org.springframework.stereotype.Component;
@Entity
@Table(name="role")
@Component
public class Role {
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="username")
private Registration registration;
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
 private int roleid;
 private String role;
 


public int getRoleid() {
	return roleid;
}
public void setRoleid(int roleid) {
	this.roleid = roleid;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public Registration getRegistration() {
	return registration;
}
public void setRegistration(Registration registration) {
	this.registration = registration;
}

 
}
