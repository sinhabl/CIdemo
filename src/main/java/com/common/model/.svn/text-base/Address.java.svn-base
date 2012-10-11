package com.common.model;

import javax.persistence.*;

@Entity
@Table(name="ADDRESS")
public class Address {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO,generator="addr_user_prof")
	@SequenceGenerator(name="addr_user_prof", sequenceName="addr_prof")
	@Column(name="ID")
	int id;
	
	@Column(name="HOUSENO")
	String houseNo;
	
	@Column(name="STREET")
	String street;
	
	@Column(name="LOCATION")
	String location;
	
	public Address()
	{
		
	}
	
	public String getHouseNo() {
		return houseNo;
	}
	public void setHouseNo(String houseNo) {
		this.houseNo = houseNo;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
}
