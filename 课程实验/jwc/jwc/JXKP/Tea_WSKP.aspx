<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page %>
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
int R=0;
string vLB="",vXNXQ="",vKCLX="",vKCDM="",vJSDM="",USER_ID="",s="",vKCLB="";
string vScoreAll="",AppraiseStardard="",AppraiseItem="",vMemo="",vFlag="",vPJRY="",vCJ="";
string vPJLC="",vZJ_FLAG="",vDJDMstr="";
string vXN="",vXQ="";


//*****************************************����******************************************
try{vScoreAll=Request.Form["score"].ToString();}catch(Exception){vScoreAll="";}
if (vScoreAll!="")
{
	string vHTML="";
	bool sf_M;
	try{vKCDM=Request.QueryString["kc"].ToString();}catch(Exception){vKCDM="";}
	try{vJSDM=Request.QueryString["js"].ToString();}catch(Exception){vJSDM="";}
	try{vXN=Request.QueryString["xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.QueryString["xq"].ToString();}catch(Exception){vXQ="";}
	try{USER_ID=Request.QueryString["id"].ToString();}catch(Exception){USER_ID="";}
	try{vKCLX=Request.QueryString["kclx"].ToString();}catch(Exception){vKCLX="";}
	try{AppraiseStardard=Request.Form["item"].ToString();}catch(Exception){AppraiseStardard="";}
	try{AppraiseItem=Request.Form["item_dm"].ToString();}catch(Exception){AppraiseItem="";}
	try{vMemo=Request.Form["memo"].ToString();}catch(Exception){vMemo="";}
	try{s=Request.QueryString["s"].ToString();}catch(Exception){s="";}
	try{vLB=Request.QueryString["lb"].ToString();}catch(Exception){vLB="";}
	try{vCJ=Request.Form["cj"].ToString();}catch(Exception){vCJ="";}
	try{vKCLB=Request.Form["txtkclb"].ToString();}catch(Exception){vKCLB="";}
	try{vPJLC=Request.Form["txtPJLC"].ToString();}catch(Exception){vPJLC="";}
	try{vZJ_FLAG=Request.Form["txtZJ"].ToString();}catch(Exception){vZJ_FLAG="";}
	try{vDJDMstr=Request.Form["djdm"].ToString();}catch(Exception){vDJDMstr="";}
	
	sf_M=pSub.SaveValueWSKPJSP(vXN,vXQ,vJSDM,vKCDM,AppraiseItem,AppraiseStardard,vMemo,USER_ID,vDJDMstr,vCJ,vScoreAll,vLB,vZJ_FLAG,vPJLC);
	vHTML=vHTML+"<a  href=javascript:void(0) onclick=MM_openBrWindow(\"KPJG.aspx?xn="+vXN+"&xq="+vXQ+"&xh="+USER_ID+"&kcdm="+vKCDM+"&jsdm="+vJSDM+"&lb="+vLB+"&kclb="+vKCLB+"&zj_flag="+vZJ_FLAG+"&pjlc="+vPJLC+"\",\"winKPT\",\"width=450,height=490,scrollbars=yes\"); title=�鿴����>�鿴</a>";
	Response.Output.Write ("<script language=javascript>opener.document.all.pj"+s+".innerHTML='"+vHTML+"';top.close();</script>");
	Response.End();	
}
//*****************************************end******************************************

try{vXNXQ=Request.QueryString["xnxq"].ToString();}catch(Exception){vXNXQ="";}
try{vLB=Request.QueryString["lb"].ToString();}catch(Exception){vLB="";}
try{vKCLX=Request.QueryString["kclx"].ToString();}catch(Exception){vKCLX="";}
try{vKCLB=Request.QueryString["kclb"].ToString();}catch(Exception){vKCLB="";}
try{vKCDM=Request.QueryString["kcdm"].ToString();}catch(Exception){vKCDM="";}
try{vJSDM=Request.QueryString["jsdm"].ToString();}catch(Exception){vJSDM="";}
try{USER_ID=Request.QueryString["id"].ToString();}catch(Exception){USER_ID="";}
try{s=Request.QueryString["s"].ToString();}catch(Exception){s="";}
try{vPJLC=Request.QueryString["pjlc"].ToString();}catch(Exception){vPJLC="";}
try{vZJ_FLAG=Request.QueryString["zj_flag"].ToString();}catch(Exception){vZJ_FLAG="";}
vXN=PubObj.Left(vXNXQ,4);
vXQ=PubObj.Right(vXNXQ,1);
if(vKCLX=="")
{
	Response.Redirect ("../_help/Sorry.aspx?str=�ÿγ�/������δ�������");
}
Response.Output.Write (PubObj.HtmlHear("�ύ��ѧ���۱�"));
%>
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" height="50px" >
<tr><td valign="top" align="center">   
	  <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center"  height="26">
        	<tr><td valign="bottom" align="center"><b>�ύ��ѧ���۱�</b><br>
			<script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
      </table>
</td></tr>
<tr><td width="100%">
<form name=form1 action=Tea_WSKP.aspx method=post>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
<%
	try{R=pSub.GetTableWSKPJSP_PJ(vXNXQ,vKCLX,vLB,vKCLB);
	}catch(Exception){}
	if(R==0)
	{
		Response.Redirect ("../_help/Sorry.aspx?str=����γ�/������δ��������ָ�꣡");
	}
	else
	{
		try{Response.Output.Write (pSub.DrawRptMainWSKPJSP_PJ(vXNXQ,vLB,vKCDM,vJSDM,vKCLX,USER_ID,s,vKCLB));
		}catch(Exception){}
	}

%>
	
	<input name="txtjs" type="hidden" size="1" value="<%=vJSDM%>">
	<input name="txtkc" type="hidden" size="1" value="<%=vKCDM%>">
	<input name="txtuser" type="hidden" size="1" value="<%=USER_ID%>">
	<input name="txtxn" type="hidden" size="1" value="<%=vXN%>">
	<input name="txtxq" type="hidden" size="1" value="<%=vXQ%>">
	<input name="txtkclx" type="hidden" size="1" value="<%=vKCLX%>">
	<input name="txtlb" type="hidden" size="1" value="<%=vLB%>">
  	<input type="hidden" name="txts" value=<%=s%>>
  	<input type="hidden" name="txtPJRY" value=<%=vPJRY%>>
  	<input type=hidden name="txtkclb" value=<%=vKCLB%>>
  	<input name="txtPJLC" type="hidden" value="<%=vPJLC%>">
  	<input name="txtZJ" type="hidden" value="<%=vZJ_FLAG%>">
  	<input type=hidden name=memo value=''>
  	<input type=hidden name=score value=''>
  	<input type=hidden name=item value=''>
  	<input type=hidden name=item_dm value=''>
  	<input type="hidden" name=djdm value="">
  	<input type=hidden name=cj value=''>
  	</form>
<%
Response.Output.Write (PubObj.HtmlTrail());
%>
<script language="JavaScript" type="text/JavaScript">
function go(){
	var m_score,m_item,m_itemdm,m_mome,m_cj,m_scoreall,m_itemreall,m_itemdmreall,m_momereall,m_cjreall;
	var m_djdm,m_djdmreall;
	var m_c,m_js,m_kc,m_b,m_user;
	var m_kclx,m_pjry,m_s;
	var m_lb;
	m_b=true;
	m_scoreall="";
	m_itemreall="";
	m_itemdmreall="";
	m_momereall="";
	m_cjreall="";
	m_djdmreall="";
	m_c=form1.txt_count.value;
	m_js=form1.txtjs.value;
	m_kc=form1.txtkc.value;
	m_xn=form1.txtxn.value;
	m_xq=form1.txtxq.value;
	m_kclx=form1.txtkclx.value;
	m_pjry=form1.txtlb.value;
	m_user=form1.txtuser.value;
	m_s=form1.txts.value;
	m_lb=form1.txtlb.value;
	if(m_js==""){
		alert("��ѡ����ʦ��");
	}
	else{
		for(k=0;k<m_c;k++){
			m_score=eval("document.all.sel_score"+k+".value");
			m_item=eval("document.all.sel_score"+k+".item");
			m_itemdm=eval("document.all.sel_score"+k+".item_dm");
			m_mome=eval("document.all.sel_score"+k+".memo");
			m_cj=eval("document.all.sel_score"+k+".Sorce");
			m_djdm=eval("document.all.sel_score"+k+".djdm");
			if(m_score==""){m_b=false;
			}
			else{
				m_scoreall=m_scoreall + m_score+"|";
				m_itemreall=m_itemreall+m_item+"|";
				m_itemdmreall=m_itemdmreall+m_itemdm+"|";	
				m_momereall=m_momereall+m_mome+"|";
				m_cjreall=m_cjreall+m_cj+'|'
				m_djdmreall=m_djdmreall+m_djdm+'|';
			}
		}
	}
	if(m_b==true){
		if (confirm('��ȷ�����۽��,�Ƿ�Ҫ�ύ?')){
			document.all.memo.value=m_momereall;
			document.all.score.value=m_scoreall;
			document.all.item.value=m_itemreall;
			document.all.item_dm.value=m_itemdmreall;
			document.all.cj.value=m_cjreall;
			document.all.djdm.value=m_djdmreall;
			form1.action='Tea_WSKP.aspx?s='+ m_s +'&id=' + m_user + '&pjry=' + m_pjry + '&xn=' + m_xn + '&xq=' + m_xq +'&js=' + m_js +'&kclx=' + m_kclx + '&kc=' +m_kc +'&lb='+m_lb;
			form1.submit();
			
		}
	}else{
		alert("���ÿһ���֣�");
	}	

}

function selchk(theID,m){
var i,j,s,objCJ;
eval("objCJ=document.all.chkCJ"+m);
s='';
j=objCJ.length;
for(i=0;i<=j;i++){
	if(objCJ(i).checked){
	if(s=='') {s=objCJ(i).value;}
	else {s+='$'+objCJ(i).value;}
	}
}
eval("document.all.sel_score"+m+".value=s")
}

function selrad(theID,m){
eval("document.all.sel_score"+m+".value=theID.value")
}

</script>