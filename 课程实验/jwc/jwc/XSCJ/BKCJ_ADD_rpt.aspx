<%@ Page %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<!--#include file="BKCJ_ADD_CheckValue.vbs"-->
<%
	BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
	BLL.XSCJ.BLL_CJLR pSub=new BLL_CJLR();
	BLL.XSCJ.BLL_CJLR_RPT wRpt=new	BLL_CJLR_RPT();
	BLL.XSCJ.CJLR_SubmitCJ Save=new BLL.XSCJ.CJLR_SubmitCJ();
	string[] vPV=new string[11]{"","","","","","","","","","",""};
	string[] vCJLR=new string[5]{"","","","",""};
	string vXNXQ="";
	string viewCJBXXS="";
	string sfSsubmit;
	Response.Write (pSub.HtmlHear("BKCJ_ADD_rpt.aspx"));
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{sfSsubmit=Request.QueryString["f"];}catch(Exception){sfSsubmit="";}
		if(sfSsubmit=="ok")
		{
			Save.SubmitBKCJ(this);
		}
		try
		{
			vXNXQ=Request.Form["hid_xnxq"];
			vPV[0]=vXNXQ.Substring(0,4);
			vPV[1]=vXNXQ.Substring(vXNXQ.Length-1,1);
		}
		catch(Exception)
		{
			vPV[0]="";
			vPV[1]="";
		}
		try{vPV[2]=Request.Form["sel_kc"];}catch(Exception){vPV[2]="";}
		try{vPV[9]=Request.Form["sel_kslc"];}catch(Exception){vPV[9]="";}
		try{vPV[8]=Request.Form["sel_cddw"];}catch(Exception){vPV[8]="";}
		try{vPV[6]=Request.Form["sel_nj"];}catch(Exception){vPV[6]="";}
		try{vPV[7]=Request.Form["sel_zy"];}catch(Exception){vPV[7]="";}
		try{vPV[10]=Request.Form["hid_user"];}catch(Exception){vPV[10]="";}
		try{vCJLR[0]=Request.Form["chkZHCJ"];}catch(Exception){vCJLR[0]="";}
		try{vCJLR[1]=Request.Form["chkZHCJ"];}catch(Exception){vCJLR[1]="";}
		try{vCJLR[2]=Request.Form["chkPSCJ"];}catch(Exception){vCJLR[2]="";}
		try{vCJLR[3]=Request.Form["chkQZCJ"];}catch(Exception){vCJLR[3]="";}
		try{vCJLR[4]=Request.Form["chkQMCJ"];}catch(Exception){vCJLR[4]="";}
		try{viewCJBXXS=Request.Form["chkCJBXXS"];}catch(Exception){viewCJBXXS="";}
	}
	
	try{
		Response.Write (wRpt.BKCJDrawRptMain(vCJLR,viewCJBXXS,vPV,vPV[10]));
	}catch(Exception ){}
	Response.Write ("</form></center></body></html>");

%>