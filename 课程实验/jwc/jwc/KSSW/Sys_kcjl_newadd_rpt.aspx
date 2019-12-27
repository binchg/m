<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	BLL_kssw pSub=new BLL_kssw(this);
   string vKCDM="",vKSPC="",vKSDM="",vJSDM="",vTitle="¼�뿼����¼";
   string xn="",xq="",ksdm="",pc="",kc="",jsdm="",ykrs="",skrs="",sjn01="",zzjjxs="",sjall="",sjnajz="";
   string sjnbjz="",kcjl="",wbxs="",qkxs="",bz="",user_id="",kcdm="",vGX="0",actionFunction="";
   Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
   Response.Output.Write("<link rel=\"stylesheet\" href=\"./a.css\" type=\"text/css\">\n");
   
   //Rpt
	try{ vKCDM=Request.QueryString["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vKSPC=Request.QueryString["pc"].ToString().Trim();}catch(Exception){};
	try{ vKSDM=Request.QueryString["kslc"].ToString().Trim();}catch(Exception){};
	try{ vJSDM=Request.QueryString["jsdm"].ToString().Trim();}catch(Exception){};
   //saveform
	try{ xn=Request.Form["xn"].ToString().Trim();}catch(Exception){};
	try{ xq=Request.Form["xq"].ToString().Trim();}catch(Exception){};
	try{ ksdm=Request.Form["ksdm"].ToString().Trim();}catch(Exception){};
	try{ pc=Request.Form["pc"].ToString().Trim();}catch(Exception){};
	try{ kcdm=Request.Form["kcdm"].ToString().Trim();}catch(Exception){};
	
	try{ jsdm=Request.Form["jsdm"].ToString().Trim();}catch(Exception){};
	try{ ykrs=Request.Form["ykrs"].ToString().Trim();}catch(Exception){};
	try{ skrs=Request.Form["skrs"].ToString().Trim();}catch(Exception){};
	try{ sjn01=Request.Form["SJNO1"].ToString().Trim();}catch(Exception){};
	try{ zzjjxs=Request.Form["zzjjxs"].ToString().Trim();}catch(Exception){};
	
	try{ sjall=Request.Form["sjall"].ToString().Trim();}catch(Exception){};
	try{ sjnajz=Request.Form["SJNO1JZ"].ToString().Trim();}catch(Exception){};
	try{ sjnbjz=Request.Form["SJNO15JZ"].ToString().Trim();}catch(Exception){};
	try{ kcjl=Request.Form["kcjl"].ToString().Trim();}catch(Exception){};
	try{ wbxs=Request.Form["wbxs"].ToString().Trim();}catch(Exception){};
	
	try{ qkxs=Request.Form["qkxs"].ToString().Trim();}catch(Exception){};
	try{ bz=Request.Form["bz"].ToString().Trim();}catch(Exception){};
	try{ user_id=Request.Form["user_id"].ToString().Trim();}catch(Exception){};
	
	try{ vGX=Request.Form["GX"].ToString().Trim();}catch(Exception){};
	
	try{actionFunction=Request.ServerVariables["REQUEST_METHOD"].ToString().Trim();}catch(Exception){};
	try{
		Response.Output.Write((new BLL_kssw(this))._sys_kc_add_rpt(actionFunction,pSub.USER_ID,vGX,vKCDM,vKSPC,vKSDM,vJSDM,xn,xq,ksdm,pc,kcdm,jsdm,
		ykrs,skrs,sjn01,zzjjxs,sjall,sjnajz,sjnbjz,kcjl,wbxs,qkxs,bz,user_id).ToString());
	}catch(Exception ex){}
   
   Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

<script language="JavaScript">
function ChkValue(theForm)
{
 var reg = /^(\d{1,4})\-(\d{1,2})\-(\d{1,2})$/;
 var r; 

 if (Form.SKRS.value == ""  ||Form.SKRS.value == 'nothing') 
    { alert('��¼��ʵ��������')
      return false }
 if (Form.SJNO1JZ.value == "" || Form.SJNO1JZ.value == 'nothing') 
    { alert('��¼�뿼��1/2����������');
      return false }
 if (Form.SJNO15JZ.value == "" || Form.SJNO15JZ.value == 'nothing') 
    { alert('��¼�뿼��2/3����������');
      return false }	  
 if (Form.SJALL.value == "" || Form.SJNO1.value == "" || Form.SJNO1.value == 'nothing' || Form.SJALL.value == 'nothing') 
    { alert('��¼��ȫ������ʱ��͵�һ�������ʱ�䣡');
      Form.sksj.focus();
      return false }
 //else
  if(Form.DateMsg.value!=""){alert(Form.DateMsg.value);return false;}
  if(Form.DateMsg1.value!=""){alert(Form.DateMsg1.value);return false;}

 if (isNaN(Form.SKRS.value)) 
    { alert('��������¼��ʵ��������');
      Form.SKRS.focus();
      return false }
 if (isNaN(Form.SJNO1JZ.value)) 
    { alert('��������¼�뿼��1/2ʱ�佻��������');
      Form.SJNO1JZ.focus();
      return false }
 if (isNaN(Form.SJNO15JZ.value)) 
    { alert('��������¼�뿼��2/3ʱ�佻��������');
      Form.SJNO15JZ.focus();
      return false }
      
 if (Form.SKRS.value!="")
	{if(Form.SJNO15JZ.value>Form.SKRS.value)
		{ alert("����2/3ʱ�佻������ӦС�ڵ���ʵ��������")
		  Form.SJNO15JZ.focus();
		  return false
		}
		
	 if(Form.SJNO1JZ.value>Form.SKRS.value)
		{ alert("����1/2ʱ�佻������ӦС�ڵ���ʵ��������")
		  Form.SJNO15JZ.focus();
		  return false
		}
	}
  return true
 }
function getval(theForm){
if(ChkValue(theForm))
	{
		if (confirm('�Ƿ񱣴棿'))
		{
			return  true
			
		}
		else
		{
			return false;
		}
	}
	else
	{
	return false;
	}
}

function rechk()
{
window.close();
}

function setqkrs(n){

	if(n>=0 && document.all.YKRS.value>0)
	{
		try{
		document.all.SKRS.value=document.all.YKRS.value-n;
		}catch(e){}
	}
}
 </script>