/**
 * 
 */
package com.wst.beans;

import org.apache.struts.action.ActionForm;

/**
 * @author user
 *
 */
public class LoginForm extends ActionForm {
		private String userId;
		private String password;
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		
}
