<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Page %>
<%
BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;

string SubmitStr="";
string[] PV=new string[2]{"",""};
string vLB="",vYY="",vType="";
int R=0;

bool DoorValue=xsxj.TQTCBYSQ_TimeArea();
if(!DoorValue) Response.Redirect ("../_help/sorry.aspx?str=����ǰ/�Ƴٱ�ҵ����ʱ�䣡");
PV=xsxj.GetTQTCBYSQXN();
vType=xsxj.sfTQTC(USER_ID,PV[0]);
if(vType=="")Response.Redirect ("../_help/sorry.aspx?str=���꼶רҵ��ֹ������ǰ��ҵ��");


try{SubmitStr=Request.Form["SetSQ"].ToString();}catch(Exception){SubmitStr="";}
if (SubmitStr=="����") 
{
	try{vLB=Request.Form["hid_type"].ToString();}catch(Exception){vLB="";}
	try{vYY=Request.Form["txt_SQYY"].ToString();}catch(Exception){vYY="";}
	vYY=pSub.RequestSafeValue(vYY);
	xsxj.SaveMETQTCBYSQ(USER_ID,PV[0],PV[1],vLB,vYY);
}
else if (SubmitStr=="ȡ��") 
{
	try{vLB=Request.Form["hid_type"].ToString();}catch(Exception){vLB="";}
	xsxj.DelMETQTCBYSQ(PV[0],USER_ID,vLB);
}
Response.Output.Write(pSub.HtmlHear());
Response.Output.Write("<form name=form1 action=Stu_tqtcby_rpt.aspx method=post>");
Response.Output.Write(xsxj.DrawMainTQTCBYSQ(USER_ID,PV,vType));
Response.Output.Write("</form>");
Response.Output.Write(pSub.HtmlTrail());
%>