<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.admin"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="System.Web" %>
<%
BLL_SetDoor pSub=new BLL_SetDoor();

string[]ThePer=new string[]{"5%","13%","20%","15%","12%","16%","16%"};
string[]TheAlign=new string[]{"center","center","","","center","center","center"};
string[]TheHeadStr=new string[]{"���","����״̬","���","�ȼ�","��������","����ʼ��ʱ��","��������ʱ��"};
Response.Output.Write(pSub.page_Head_HTML());
if(Request.ServerVariables["REQUEST_METHOD"]=="POST")
{
	try{
		pSub.SaveKG_djks(this);
	}catch(Exception ex){Response.Output.Write(pSub.Alert("���ݴ洢ʧ�ܣ�"));}
}
string vStr=pSub.TotalKG_djks();
Response.Output.Write("<form name='form1' method='post' action='SetDoor_XSCJ_LBDJ_rpt.aspx'> ");
Response.Output.Write(pSub.DrawRptHear(ThePer,TheHeadStr,vStr,true));

try{
	Response.Output.Write(pSub.DrawMain_djks(ThePer,TheAlign));
}catch(Exception){}

Response.Output.Write("</form> ");
Response.Output.Write(pSub.page_Bottom_HTML());
%>
