package com.common.model;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="USERPROFILE")
public class UserProfile {

	
	int id;
	String firstName;
	String lastName;
	String age;
	List<CreditCards> creditCards;
	
	@Column(name="USERNAME")
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	@Column(name="LASTNAME")
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	@Column(name="AGE")
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO,generator="user_prof_addr")
	@SequenceGenerator(name="user_prof_addr", sequenceName="user_prof")
	@Column(name="ID")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinTable(name="USER_CREDIT_CARDS",joinColumns = {@JoinColumn(name="USER_ID")},inverseJoinColumns={@JoinColumn(name="CARD_ID")})
	public List<CreditCards> getCreditCards() {
		return creditCards;
	}
	public void setCreditCards(List<CreditCards> creditCards) {
		this.creditCards = creditCards;
	}
	
	
	
	
	
}
