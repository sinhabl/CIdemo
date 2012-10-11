package com.common.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="CREDITCARDS")
public class CreditCards {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO,generator="addr_user_prof")
	@SequenceGenerator(name="addr_user_prof", sequenceName="addr_prof")
	@Column(name="CREDIT_ID")
	int crediId;
	
	@Column(name="CARD_NAME")
	String cardName;
	
	@Column(name="CARD_NUMBER")
	Integer cardNumber;

	public int getCrediId() {
		return crediId;
	}

	public void setCrediId(int crediId) {
		this.crediId = crediId;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String cardName) {
		this.cardName = cardName;
	}

	public Integer getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(Integer cardNumber) {
		this.cardNumber = cardNumber;
	}
	
	
}
