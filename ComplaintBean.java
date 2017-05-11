package com.wst.beans;

import org.apache.struts.action.ActionForm;

public class ComplaintBean extends ActionForm {

	private String complaint;

	/**
	 * @return the complaint
	 */
	public String getComplaint() {
		return complaint;
	}

	/**
	 * @param complaint the complaint to set
	 */
	public void setComplaint(String complaint) {
		this.complaint = complaint;
	}
	
}
