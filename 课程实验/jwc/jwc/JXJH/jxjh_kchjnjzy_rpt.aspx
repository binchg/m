<%@Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e){
	string vRpt="",vKC="",vNJ1="",vNJ2="",zfx_flag="",vTitle="�γ̶�Ӧ�꼶/רҵ��";
	private_JXJH pJ=new private_JXJH(this);
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_Rpt"));
	
	string [] ThePer=new string[]{"5%","10%","20%","18%","4%","4%","4%","4%","4%","12%","5%","10%"};
	string [] TheAlign=new string[]{"center","center","","","right","right","right","right","right","center","center","center"};
	string [] TheHeadStr=new string[]{"���","�꼶","רҵ","�γ����","��ѧʱ","����<br>ѧʱ","ʵ��<br>ѧʱ","�ϻ�<br>ѧʱ","����<br>ѧʱ","����ѧ��ѧ��","���˷�ʽ","��ע"}; 

	try{ vRpt=Request.Form["radgs"].ToString().Trim();}catch(Exception){}
	try{ vKC=Request.Form["sel_kc"].ToString().Trim();}catch(Exception){}
	try{ vNJ1=Request.Form["sel_nj1"].ToString().Trim();}catch(Exception){}
	try{ vNJ2=Request.Form["sel_nj2"].ToString().Trim();}catch(Exception){}
	try{ zfx_flag=Request.Form["zfx_flag"].ToString().Trim();}catch(Exception){}
	if(vRpt=="2"){
		ThePer=new string[]{"5%","10%","20%","20%","9%","9%","27%"};
		TheAlign=new string[]{"center","center","","","center","center","center"};
		TheHeadStr=new string[]{"���","�꼶","רҵ","������Ҫ��","ѧ��","����","����ѧ��ѧ��"};
		try{ vKC=Request.Form["sel_hj"].ToString().Trim();}catch(Exception){}
	}
	try{
		Response.Output.Write(pJ.View_KCHJNJZY_Rpt(vRpt,vKC,vNJ1,vNJ2,zfx_flag,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
