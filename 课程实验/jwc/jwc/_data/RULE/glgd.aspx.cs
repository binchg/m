using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using KingosoftFrame;
namespace KingosoftFrame._data.RULE
{
	/// <summary>
	/// glgd ��ժҪ˵����
	/// </summary>
	public class glgd : System.Web.UI.Page
	{
		protected string TheTitle="";
		protected string TheContent="";
		protected System.Web.UI.WebControls.Literal TheAffiche;
		private void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
			DataSet ds=new DataSet();
			DAL.Base conn=new DAL.Base();
			string filePath=Page.Server.MapPath("./");
			string xmlFileName="";
			try{
				xmlFileName=this.Request.QueryString["href"].ToString();}
			catch(Exception){}

			if(xmlFileName!="")
			{
				try
				{
					xmlFileName=filePath+xmlFileName; 
					ds.ReadXml(xmlFileName); 
					if(ds.Tables[0].Rows.Count>0)
					{
						this.TheTitle=ds.Tables[0].Rows[0][0].ToString(); 
						this.TheAffiche.Text=ds.Tables[0].Rows[0][0].ToString();
						string vContent=ds.Tables[0].Rows[0][1].ToString();
						this.TheContent=(new KingosoftFrame.kingoEditTextArea().ReplaceStr("1",vContent));
					}
				}
				catch(Exception){}
			}
		}

		#region Web ������������ɵĴ���
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: �õ����� ASP.NET Web ���������������ġ�
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
		/// </summary>
		private void InitializeComponent()
		{    
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}
}
