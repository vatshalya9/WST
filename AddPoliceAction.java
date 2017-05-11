/**
 * 
 */
package com.wst.actions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wst.beans.AddPoliceForm;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 * @author user
 *
 */
public class AddPoliceAction extends Action {

	/* (non-Javadoc)
	 * @see org.apache.struts.action.Action#execute(org.apache.struts.action.ActionMapping, org.apache.struts.action.ActionForm, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String result="invalid";
		try{
			AddPoliceForm apf=(AddPoliceForm)form;
			String policeid=apf.getDeptid();
			String station_name=apf.getStation_name();
			String location=apf.getLocation();
			String station_contact=apf.getStation_contact();
			String uname=apf.getUsername();
			System.out.println("*****"+uname);
			String password=apf.getPassword();
			String email=apf.getEmail();
			HttpSession ss=request.getSession();
			ss.setAttribute("mail",email);
			int contc=apf.getContact();
			System.out.println("+++++++++++++++"+contc);
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
			String s1="insert into police(policeid,statiion_name,location,station_contact,username,password,email,contact_no) values(?,?,?,?,?,?,?,?)";
			String s2="insert into user(user_id,password,contact,email,role_id) values(?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(s1);
			pst.setString(1,policeid);
			pst.setString(2,station_name);
			pst.setString(3,location);
			pst.setString(4,station_contact);
			pst.setString(5,uname);
			pst.setString(6,password);
			pst.setString(7,email);
			pst.setInt(8,contc);
			System.out.println("Inserted into police");
			PreparedStatement pst1=con.prepareStatement(s2);
			pst1.setString(1,uname);
			pst1.setString(2,password);
			pst1.setInt(3,contc);
			pst1.setString(4, email);
			pst1.setInt(5,2);
			
			int i=pst.executeUpdate();
			int i1=pst1.executeUpdate();
			int i2=i+i1;
			if(i2>0)
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