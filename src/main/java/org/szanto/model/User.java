/**
 * 
 */
package org.szanto.model;

import java.io.Serializable;
import java.util.Date;

/**
 * @author pszanto
 *
 */
public class User implements Serializable {
	
	private static final long serialVersionUID = 6290068934936706779L;
	
	private String firstName;
	private String lastName;
	private Date dob;
	private String cardNumber;
	private String emailAddress;
	private String password;
	private String petName;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetName() {
		return petName;
	}

}
