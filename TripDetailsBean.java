/**
**/
package com.wst.beans;

import org.apache.struts.action.ActionForm;

/**
 * @author user
 **/ 
public class TripDetailsBean extends ActionForm {

	
	private int cabid;
	//private String time;
	//private String status;
	/**
	 * @return the cabid
	 */
	/**
	 * @param cabid the cabid to set
	 */
	public void setCabid(int cabid) {
		this.cabid = cabid;
	}
	/**
	 * @return the status
	 */
	/*public String getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	/*public void setStatus(String status) {
		this.status = status;
	}*/
	public int getCabid() {
		// TODO Auto-generated method stub
		return cabid;
	}
	
	
}
