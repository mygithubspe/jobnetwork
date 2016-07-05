using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompusRecruitment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // TxtSearch.Attributes.Add("value", "请输入职位或公司名称");
      //  TxtSearch.Attributes.Add("onfocus", "if(this.value=='请输入职位或公司名称'){this.value=''}");
       // TxtSearch.Attributes.Add("onblur", "if(this.value==''){this.value='请输入职位或公司名称'}");
        if (Session["uname"] != null)
        {
            Panel.Visible = true;
            PanelLogin.Visible = false;
            Link.Text = Session["uname"].ToString();
        }

    }
    
  
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if(TxtSearch.Text.Trim ()=="")
        {
            Response.Redirect("result.aspx");
        }
        else
        {
            Session["sousuox"] = TxtSearch.Text.Trim();
            Response.Redirect("result.aspx");
        }
        

    }
    protected void LinkButtonLogin_Click(object sender, EventArgs e)
    {
        Session["cc"] = "3";
        Response.Redirect("login.aspx");
    }
    protected void LinkButtonRegist_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    
    protected void Link_Click1(object sender, EventArgs e)
    {

        Response.Redirect("personal_center.aspx");
    }
    protected void LinkButtonStu_Click(object sender, EventArgs e)
    {
        if (Panel.Visible == false)
            Response.Redirect("login.aspx");
        else
            Response.Redirect("stu_complain.aspx");
    }
}