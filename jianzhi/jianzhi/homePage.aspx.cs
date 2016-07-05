using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

public partial class shouye : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("server=QH-20150317LKUF\\SQLEXPRESS;database=jianzhi;uid=sa;pwd=123456");
    string strsql;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        txtSearch.Attributes.Add("value","请输入职位或公司");
        txtSearch.Attributes.Add("onfocus", "if(this.value=='请输入职位或公司'){this.value=''}");
        txtSearch.Attributes.Add("onblur", "if(this.value==''){this.value=='请输入职位或公司'}");

        if (Session["uname"]!= null)
        {
            Panel.Visible = true;
            PanelLogin.Visible = false;
            Link.Text = Session["uname"].ToString();
        }

        conn.Open();
        string strsql;
        strsql = "select top 6 pos_id,pos_name,time from position order by pos_id desc";
        DataTable dt = new DataTable();
        SqlDataAdapter cmd = new SqlDataAdapter(strsql, conn);
        cmd.Fill(dt);
        gvJianzhi.DataSource = dt;
        gvJianzhi.DataBind();

        strsql = "select top 6 defraud_id,defraud,time from defraud order by defraud_id desc";
        dt = new DataTable();
        cmd = new SqlDataAdapter(strsql, conn);
        cmd.Fill(dt);
        gvDefraud.DataSource = dt;
        gvDefraud.DataBind();
        conn.Close();
    }
 
    protected void lbZhi_Click(object sender, EventArgs e)
    {
         panZhi.Visible = true;
         panHang.Visible = false;
         lbZhi.BackColor = Color.White;
         lbHang.BackColor = Color.WhiteSmoke;
    }
    protected void lbHang_Click(object sender, EventArgs e)
    {
        
          panHang.Visible = true;
          panZhi.Visible = false;
          lbHang.BackColor = Color.White;
          lbZhi.BackColor = Color.WhiteSmoke;  
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["txtsearch"] = txtSearch.Text;     
        Response.Redirect("search.aspx");
        
    }
    protected void LinkButtonPublic_Click(object sender, EventArgs e)
    {
        conn.Open();
        string ss=null;
        if (Session["uname"] != null) 
        {
            string s = Session["uname"].ToString();
            strsql = "select iden from userlist where uname='" + s + "'";
            SqlCommand cmd = new SqlCommand(strsql, conn);
            ss = cmd.ExecuteScalar().ToString().Trim();
        }
        if (Panel.Visible == false||ss.Equals("普通用户"))

            Response.Redirect("login.aspx");
        else
            Response.Redirect("publish.aspx");
       
    }
    protected void LinkButtonLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void LinkButtonRegist_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void Link_Click(object sender, EventArgs e)
    {
        Response.Redirect("personal_center.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void LinkButtonStu_Click(object sender, EventArgs e)
    {
        if (Panel.Visible == false)
            Response.Redirect("login.aspx");
        else
            Response.Redirect("stu_complain.aspx");
    }
}