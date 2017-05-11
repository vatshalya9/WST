package com.wst.actions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.wst.beans.RegistrationForm;

public class EndTripAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String result = "invalid";
		// TODO Auto-generated method stub
		// dovalidation code here
		try{
			HttpSession sessn=request.getSession();
			String tname=(String)sessn.getAttribute("userid");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
			String ups="update trip set status='Reached' where travellerid='"+tname+"' ";
			PreparedStatement pst1=con.prepareStatement(ups);
			System.out.println("Updated trip table");
			int i=pst1.executeUpdate();
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
