<%@ Page %>
<%@ Import namespace="System" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>
<script language=C# runat=server>
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.JXZY.jxzy glbmxx=new BLL.JXZY.jxzy(this);
			string Html="";
			Html+=glbmxx.HtmlHear_front("רҵ����һ����");
			Html+=glbmxx.HtmlBody_front("רҵ����һ����","z_xbzy_rpt.aspx");
			Html+=glbmxx.HtmlTrail_front();
			Response.Write(Html);
		}
</script>
