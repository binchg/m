<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.JXSJ" %>
<%@ Import NameSpace="BLL.include" %>
<%
	BLL.JXSJ.ind_subPrivate_JXSJ SelObj =new ind_subPrivate_JXSJ();
	string vHTML="",vID="",vWD="",vS="";
	try{vID=Request.QueryString["id"].ToString();}catch(Exception){vID="";}
	try{vS=Request.QueryString["s"].ToString();}catch(Exception){vS="";}
	try{vWD=Request.QueryString["wd"].ToString();}catch(Exception){vWD="";}
	vHTML=vHTML+(SelObj.DrawOption("NJYXZY",vID,vS,""));
	Response.Output.Write (vHTML);
 %>
