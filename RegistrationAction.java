/**
 * 
 */
package com.wst.actions;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.wst.beans.RegistrationForm;

/**
 * @author user
 *
 */
public class RegistrationAction extends Action {

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
		RegistrationForm rf=(RegistrationForm)form;
		String uname=rf.getUserId();
		System.out.println("///////////////"+uname);
		String password=rf.getPassword();
		String fname=rf.getFirstName();
		String lname=rf.getLastName();
		String email=rf.getEmail();
		String identity=rf.getIdentity();
		long cont=rf.getContact();
		System.out.println("CONTACT IN ACTION"+cont);
		String gender=rf.getGender();
		String company=rf.getCompany();
		String companyaddress=rf.getCompanyaddress();
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
		
		String s1="insert into manager(managerid,company,company_address,password) values(?,?,?,?)";
		String s2="insert into user(user_id,password,first_name,last_name,contact,email,gender,identity,role_id) values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst=con.prepareStatement(s1);
		pst.setString(1,uname);
		pst.setString(2,company);
		pst.setString(3,companyaddress);
		pst.setString(4,password);
		System.out.println("Inserted into manager");
		int p1=pst.executeUpdate();
		PreparedStatement pst1=con.prepareStatement(s2);
		pst1.setString(1, uname);
		pst1.setString(2, password);
		pst1.setString(3,fname);
		pst1.setString(4,lname);
		pst1.setLong(5,cont);
		pst1.setString(6,email);
		pst1.setString(7,gender);
		pst1.setString(8,identity);
		pst1.setInt(9, 2);
		System.out.println("Inserted into user");
		int p2=pst1.executeUpdate();
		int i=p1+p2;
		 	if(i>0)
		{
			result="success";
		}
		 	else
		 	{
		 		result="fail";
		 	}
	}
		
		
		catch(Exception e){
			e.printStackTrace();
		}
		return mapping.findForward(result);
		
	}
	}
