<%@ Page language="c#" Codebehind="Tea_ArrangeExpe_SelStuDialog.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Tea_ArrangeExpe_SelStuDialog" %>

<HTML>
	<HEAD>
		<title>����ѧ��</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language=javascript>
			function ChkValue()
			{
				var i;
				var checkBoxNum;
				var object;
				var objectvalue="";
				//�Ƿ���ѧ��ʱ���ͻ
				var checkTimeFlag;
				//����ʱ��
				var arrangetime;
				//����
				var arrangetime_xq;
				//�ڴ�
				var arrangetime_jc;
				var arrangetime_wz;
				var errorinfo="";
				checkBoxNum=window.frmRpt.document.all.stunum.value;
				checkTimeFlag=document.all.checkTimeFlag.checked;
				arrangetime=document.all.time.value;
				if(arrangetime.length>=5){
					arrangetime_xq=parseInt(arrangetime.substring(arrangetime.indexOf("K")+1,arrangetime.indexOf("K")+2));
					arrangetime_jc=parseInt(arrangetime.substring(arrangetime.indexOf("K")+2,arrangetime.indexOf("K")+3));
					arrangetime_wz=(arrangetime_xq-1)*7+arrangetime_jc-1;
					for(i=1;i<=checkBoxNum;i++){
						var strid
						var checkedflag;  //ѡ�б�־
						var arrangeflag;��//�Ƿ��Ѱ���
						var stuid;        //ѧ��ѧ��
						var stuxm;        //ѧ������
						var time;         //ѧ�����Žڴ���Ϣ
						eval("object=window.frmRpt.document.all.chk"+i);
						arrangeflag=object.flag;
						stuid=object.stuid;
						stuxm=object.stuxm;
						time=object.time;
						
						
						//��ȡ��ѡ�е�δ���ŵ�ѧ�����ͣ�δѡ�е����ŵ�ѧ������Ϣ
						strid=arrangeflag+'@'+stuid+'@'+time;
						if(object.checked==true)
							checkedflag="1";
						else 
							checkedflag="0";
						strid=checkedflag+'@'+strid;
						if(object.checked==true&&arrangeflag=="0")
						{
							//���ѧ��ʱ���ͻ
							if(!checkTimeFlag){
								if(time.substring(arrangetime_wz,arrangetime_wz+1)=="1"){
									errorinfo+=stuxm+"��";
								}else{
									if(objectvalue=="")
										objectvalue=strid;
									else 
										objectvalue+="|"+strid;
								}
							}else{
								if(objectvalue=="")
									objectvalue=strid;
								else 
									objectvalue+="|"+strid;
							}
						}else if(object.checked==false&&arrangeflag=="1"){
							if(objectvalue=="")
								objectvalue=strid;
							else 
								objectvalue+="|"+strid;
						}
					}
					if(objectvalue==""&&errorinfo==""){
						alert('û�п��ύ�İ�����Ϣ��');
					}else{
						if(errorinfo!=""){
							alert("����ѧ��ʱ���ͻ��\n"+errorinfo);
						}else{
							if(confirm("�Ƿ񱣴棿")){
								document.all.stu.value=objectvalue;
								form1.target='frmRpt';
								form1.action='Tea_ArrangeExpe_SelStuDialog_rpt.aspx?flag=update';
								form1.submit();
							}
						}
					}
				}else{
					alert('δ�ܻ�ȡ����ʱ�䣬������ֹ��');
				}
			}
		</script>
	</HEAD>
	<body 
		leftMargin="0" topMargin="0" marginheight="0" marginwidth="0" scroll="no">
		<form name="form1" target="frmRpt" action="Tea_ArrangeExpe_SelStuDialog_rpt.aspx" method="post" >
		<table width="98%" height="99%" border="0" cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td width="100%" style="HEIGHT:5px" nowrap></td>
			</tr>
			<tr>
				<td width="100%" style="HEIGHT:5px"><script language="JavaScript" >Draw_HR('100%')</script>
				</td>
			</tr>
			<tr>
				<td width="100%" height="28px" align=left valign=top>
					<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" align="center">
						<tr><td align=left>
							ʵ��������&nbsp;<u>20</u>
							&nbsp;�ְ�����&nbsp;<input name="GroupRs" type=text size=4 style="height:20px">
						</td>
						<td align=right>
							<input type=checkbox name="checkTimeFlag" >����ѧ��ʱ���ͻ
						</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td width="100%" valign=bottom >
					<div style="height:3%;width:100%" id="theHead" ></div>
				</td>
			</tr>
			
			<tr>
				<td width="100%" align="left"  height="95%">
					<iframe name=frmRpt src="Tea_ArrangeExpe_SelStuDialog_rpt.aspx" width=100% height=99% frameborder=1></iframe>
				</td>
			</tr>
			
			<tr>
				<td width="100%" valign="top" style="HEIGHT:20px" align="right" nowrap >
					<input type="button" class="but20" id="savebut" value="����" onclick="ChkValue()" disabled>
					<input type="button" class="but20" id="closebut" value="����" onclick="window.close();">
					<input type=hidden name=xn value='<%=vXN%>'>
					<input type=hidden name=xq value='<%=vXQ%>'>
					<input type=hidden name=expeitemskbj_xh value='<%=vExpeitemskbj_xh%>'>
					<input type=hidden name=syrl value='20'>
					<input type=hidden name=time value='<%=vTime%>'>
					<input type=hidden name=stu value=''>
				</td>
			</tr>
		</table>
		</form>
	</body>
</HTML>
<script language=javascript>window.form1.submit();</script>
