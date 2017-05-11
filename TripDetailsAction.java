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



import com.wst.beans.TripDetailsBean;

public class TripDetailsAction extends Action {

	/* (non-Javadoc)
	 * @see org.apache.struts.action.Action#execute(org.apache.struts.action.ActionMapping, org.apache.struts.action.ActionForm, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String result="invalid";
		try{
			TripDetailsBean tdb=(TripDetailsBean)form;
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
			HttpSession ss=request.getSession();
			String uname=(String)ss.getAttribute("userid");
			String s1="insert into trip(cabid,travellerid) values(?,?)";
			PreparedStatement pst=con.prepareStatement(s1);
			pst.setInt(1, tdb.getCabid());
			pst.setString(2,uname);
			//pst.setString(3, tdb.getTime());
			//pst.setString(4, tdb.getStatus());
			
			int i=pst.executeUpdate();
			if(i>0)
				result="success";
			else
				result="invalid";
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
	
	return mapping.findForward(result);
	}

}
