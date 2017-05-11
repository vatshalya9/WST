/**
 * 
 */
package com.wst.beans;

import org.apache.struts.action.ActionForm;

/**
 * @author user
 *
 */
public class TravellerRegistrationForm extends ActionForm {

	private String userId;
	private String password;
	private String firstName;
	private String lastName;
	private String email;
	private long contact;
	private String gender;
	private String Address;
	private String travellerid;
	private String reference_name1;
	private long contact1;
	private String reference_name2;
	private long contact2;
	
	/**
	 * @return the travellerid
	 */
	public String getTravellerid() {
		return travellerid;
	}
	/**
	 * @param travellerid the travellerid to set
	 */
	public void setTravellerid(String travellerid) {
		this.travellerid = travellerid;
	}
	/**
	 * @return the reference_name1
	 */
	public String getReference_name1() {
		return reference_name1;
	}
	/**
	 * @param reference_name1 the reference_name1 to set
	 */
	public void setReference_name1(String reference_name1) {
		this.reference_name1 = reference_name1;
	}
	/**
	 * @return the contact1
	 */
	public long getContact() {
		return contact;
	}
	/**
	 * @param contact1 the contact1 to set
	 */
	public void setContact(long contact) {
		this.contact = contact;
	}
	public long getContact1() {
		return contact1;
	}
	/**
	 * @param contact1 the contact1 to set
	 */
	public void setContact1(long contact1) {
		this.contact1 = contact1;
	}
	/**
	 * @return the reference_name2
	 */
	public String getReference_name2() {
		return reference_name2;
	}
	/**
	 * @param reference_name2 the reference_name2 to set
	 */
	public void setReference_name2(String reference_name2) {
		this.reference_name2 = reference_name2;
	}
	/**
	 * @return the contact2
	 */
	public long getContact2() {
		return contact2;
	}
	/**
	 * @param contact2 the contact2 to set
	 */
	public void setContact2(long contact2) {
		this.contact2 = contact2;
	}
	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the contact
	 */
	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}
	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return Address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		Address = address;
	}
}
