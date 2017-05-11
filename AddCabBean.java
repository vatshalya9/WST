package com.wst.beans;

import org.apache.struts.action.ActionForm;

public class AddCabBean extends ActionForm {

		//private int cabid;
		private String type;
		private String driver;
		private String dAddr;
		private int contact;
		private String identity;
		/**
		 * @return the type
		 */
		public String getType() {
			return type;
		}
		/**
		 * @param type the type to set
		 */
		public void setType(String type) {
			this.type = type;
		}
		/**
		 * @return the driver
		 */
		public String getDriver() {
			return driver;
		}
		/**
		 * @param driver the driver to set
		 */
		public void setDriver(String driver) {
			this.driver = driver;
		}
		/**
		 * @return the dAddr
		 */
		public String getdAddr() {
			return dAddr;
		}
		/**
		 * @param dAddr the dAddr to set
		 */
		public void setdAddr(String dAddr) {
			this.dAddr = dAddr;
		}
		/**
		 * @return the contact
		 */
		public int getContact() {
			return contact;
		}
		/**
		 * @param contact the contact to set
		 */
		public void setContact(int contact) {
			this.contact = contact;
		}
		/**
		 * @return the identity
		 */
		public String getIdentity() {
			return identity;
		}
		/**
		 * @param identity the identity to set
		 */
		public void setIdentity(String identity) {
			this.identity = identity;
		}
		
		
		
}
