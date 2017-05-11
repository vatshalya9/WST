package com.wst.actions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.wst.beans.TravellerRegistrationForm;



public class EditTravellerAction extends  Action {

	/* (non-Javadoc)
	 * @see org.apache.struts.action.Action#execute(org.apache.struts.action.ActionMapping, org.apache.struts.action.ActionForm, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String result = "invalid";
		// TODO Auto-generated method stub
		// dovalidation code here
		try{
			TravellerRegistrationForm trf=(TravellerRegistrationForm)form;
			String uname=trf.getUserId();
			System.out.println("///////////////"+uname);
			String fname=trf.getFirstName();
			String lname=trf.getLastName();
			System.out.println("+++++++++++++++"+fname);
			String pwd=trf.getPassword();
			String mail=trf.getEmail();
			long cnt=trf.getContact();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
			 
			String up="update user set password=?,first_name=?,last_name=?,email=?,contact=? where user_id=?";
			PreparedStatement pst=con.prepareStatement(up);
			
			pst.setString(1, pwd);
			pst.setString(2, fname);
			pst.setString(3, lname);
			pst.setString(4, mail );
			pst.setLong(5, cnt);
			pst.setString(6,uname);
	
			
			int i=pst.executeUpdate();
			
			if(i>0)
				result="success";
			else
				result="fail";
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return mapping.findForward(result);
	}
}	
