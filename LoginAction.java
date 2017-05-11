/**
 * 
 */
package com.wst.actions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.wst.beans.LoginForm;

/**
 * @author user
 *
 */
public class LoginAction extends Action {

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
		String uid="";
		String pwd="";
		int rid=0;
		try{
		LoginForm lf=(LoginForm)form;
		String uname=lf.getUserId();
		String pass=lf.getPassword();
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
		
		String s="select user_id,password,role_id from user where user_id='"+uname+"'";
		Statement st=con.createStatement();
		
		ResultSet rs=st.executeQuery(s);
		while(rs.next()){
			uid=rs.getString(1);
			pwd=rs.getString(2);
			rid=rs.getInt(3);
		}
		HttpSession ss=request.getSession();
		ss.setAttribute("userid", uid);
		System.out.println(uid);
		if(uid.equals(uname) && pwd.equals(pass))
		{
			if(rid==1)
				result="admin";
			else if(rid==3)
			result="manager";
			else if(rid==2)
				result="police";
			else if(rid==4)
				result="traveller";
		}
		else
			result="invalid";
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return mapping.findForward(result);
	}
	
}
