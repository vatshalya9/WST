/**
 * 
 */
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

import com.wst.beans.RegistrationForm;



public class EditAction extends  Action {

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
			String email=rf.getEmail();
			long contact=rf.getContact();
			String company=rf.getCompany();
			String companyaddress=rf.getCompanyaddress();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
			
			
			String s="update user set contact=? and email=? where user_id='"+uname+"' ";
			//String s1="insert into manager(password,company,company_address) values(?,?,?) where managerid='"+uname+"'";
			String s1="update manager set password=?,company=?,company_address=? where managerid='"+uname+"' ";
			PreparedStatement pst=con.prepareStatement(s);
			pst.setLong(1,contact);
			pst.setString(2,email);
			System.out.println("Updated user table");
			PreparedStatement pst1=con.prepareStatement(s1);
			pst1.setString(1,password);
			pst1.setString(2,company);
			pst1.setString(3,companyaddress);
			System.out.println("Updated manager table");
			int p1=pst.executeUpdate();
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
