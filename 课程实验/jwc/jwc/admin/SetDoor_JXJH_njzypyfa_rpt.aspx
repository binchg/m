<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.admin"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="System.Web" %>
<%
BLL_SetDoor pSub=new BLL_SetDoor();

string[]ThePer=new string[]{"10%","20%","10%","30%","30%"};
string[]TheAlign=new string[]{"center","center","center","",""};
string[]TheHeadStr=new string[]{"���","����״̬","�꼶","��ʼʱ��","����ʱ��"};
Response.Output.Write(pSub.page_Head_HTML());
Response.Output.Write("<form name='form1' method='post' action='SetDoor_JXJH_njzypyfa_rpt.aspx'> ");
//�ύ
if(Request.ServerVariables["REQUEST_METHOD"]=="POST")
{
	try{
		pSub.SaveKG_njzypyfa(this);
	}catch(Exception ex){Response.Output.Write(pSub.Alert("���ݴ洢ʧ�ܣ�"));}
}
string vStr=pSub.TotalKG_njzypyfa();
Response.Output.Write(pSub.DrawRptHear(ThePer,TheHeadStr,vStr));
try{
	Response.Output.Write(pSub.DrawMain_njzypyfa(ThePer,TheAlign));
}catch(Exception){}
Response.Output.Write("</form> ");
Response.Output.Write(pSub.page_Bottom_HTML());
%>
