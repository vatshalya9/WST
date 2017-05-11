/**
 * 
 */
package com.wst.actions;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wst.beans.TravellerRegistrationForm;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 * @author user
 *
 */
public class TravellerRegistrationAction extends Action {

	/* (non-Javadoc)
	 * @see org.apache.struts.action.Action#execute(org.apache.struts.action.ActionMapping, org.apache.struts.action.ActionForm, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String result="invalid";
		// TODO Auto-generated method stub

		try{
			TravellerRegistrationForm trf=(TravellerRegistrationForm)form;
			String uname=trf.getUserId();
			System.out.println("///////////////"+uname);
			String password=trf.getPassword();
			String fname=trf.getFirstName();
			String lname=trf.getLastName();
			String email=trf.getEmail();
			long contact=trf.getContact();
			String gender=trf.getGender();
			String address=trf.getAddress();
			String tid=trf.getTravellerid();
			String ref1=trf.getReference_name1();
			long c1=trf.getContact1();
			String ref2=trf.getReference_name2();
			long c2=trf.getContact2();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
			
			
			String s="insert into user(user_id,password,first_name,last_name,contact,email,gender,role_id) values(?,?,?,?,?,?,?,?)";
			String s1="insert into traveller(travellerid,reference_name1,contact1,reference_name2,contact2) values(?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(s);
			pst.setString(1,uname);
			pst.setString(2,password);
			pst.setString(3,fname);
			pst.setString(4,lname);
			pst.setLong(5,contact);
			pst.setString(6,email);
			pst.setString(7,gender);
			pst.setInt(8,4);
			System.out.println("Inserted into user");
			int p1=pst.executeUpdate();
			PreparedStatement pst1=con.prepareStatement(s1);
			pst1.setString(1,uname);
			pst1.setString(2,ref1);
			pst1.setLong(3,c1);
			pst1.setString(4,ref2);
			pst1.setLong(5,c2);
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
