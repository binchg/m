<%@ Page %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%
	BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
	BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
	int R=0;
	string XH="";

    try{
		XH=Request["id"].ToString().Trim();
    }
    catch(Exception){}
    Response.Output.Write("<br>");
	Response.Output.Write(pSub.HtmlHear("ѧ��������Ϣ"));
	R=xsxj.GetTebleStuBaseInfo(XH);
	if (R>0){
		Response.Output.Write(xsxj.DrawMainStuBaseInfo());
	}else{
		Response.Redirect ("../_help/sorry.aspx?str=STOP_DOOR");
	}
	Response.Output.Write(pSub.HtmlTrail());
%>