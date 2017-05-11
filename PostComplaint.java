package com.wst.actions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.wst.beans.ComplaintBean;

public class PostComplaint extends Action {
	
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
		ComplaintBean cb=(ComplaintBean)form;
		String com=cb.getComplaint();
		HttpSession ss1=request.getSession();
		String s1=(String)ss1.getAttribute("userid");
		System.out.println("USER IN SESSION:::"+s1);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
		
		String s="insert into complaint(description,travellerid) values(?,?)";
		PreparedStatement pst=con.prepareStatement(s);
		pst.setString(1,com);
		pst.setString(2,s1);
		
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
