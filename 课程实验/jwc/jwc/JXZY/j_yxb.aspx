<%@ Page %>
<%@ Import namespace="System.Data.SqlClient" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System" %>
<script language="C#" runat="server">
		
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.JXZY.jxzy glbmxx=new BLL.JXZY.jxzy(this);
			string Html="";
			Html+=glbmxx.HtmlHear_front("��������Ϣ");
			Html+=glbmxx.HtmlBody_front("��������Ϣ","j_yxb_rpt.aspx");
			Html+=glbmxx.HtmlTrail_front();
			Response.Write(Html);
		}
</script>
<FONT face="����"></FONT>
