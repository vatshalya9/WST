/**
 * 
 */
package com.wst.beans;

import org.apache.struts.action.ActionForm;

/**
 * @author user
 *
 */
public class AddPoliceForm extends ActionForm {
private String deptid;
private String station_name;
private String location;
private String station_contact;
private String username;
private String password;
private String email;
private int contact;
/**
 * @return the policeid
 */

/**
 * @return the contact
 */
public int getContact() {
	return contact;
}
/**
 * @return the deptid
 */
public String getDeptid() {
	return deptid;
}
/**
 * @param deptid the deptid to set
 */
public void setDeptid(String deptid) {
	this.deptid = deptid;
}
/**
 * @param contact the contact to set
 */
public void setContact(int contact) {
	this.contact = contact;
}
/**
 * @return the station_name
 */
public String getStation_name() {
	return station_name;
}
/**
 * @param station_name the station_name to set
 */
public void setStation_name(String station_name) {
	this.station_name = station_name;
}
/**
 * @return the location
 */
public String getLocation() {
	return location;
}
/**
 * @param location the location to set
 */
public void setLocation(String location) {
	this.location = location;
}
/**
 * @return the station_contact
 */
public String getStation_contact() {
	return station_contact;
}
/**
 * @param station_contact the station_contact to set
 */
public void setStation_contact(String station_contact) {
	this.station_contact = station_contact;
}
/**
 * @return the username
 */
public String getUsername() {
	return username;
}
/**
 * @param username the username to set
 */
public void setUsername(String username) {
	this.username = username;
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

}
