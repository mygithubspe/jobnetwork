using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;

public partial class jianzhi_public : System.Web.UI.Page
{
    string getanswer;
    string getpsw;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.BackColor = Color.Red;
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {      
        try
        {
            string str = "server=QH-20150317LKUF\\SQLEXPRESS;database=sss;uid=sa;pwd=123456";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select uanswer from userlist where uname='" + txtname.Text.Trim() + "' and uproblem='"+ddlproblem.Text.Trim()+"'", conn);
            getanswer=cmd.ExecuteScalar().ToString();
            if (getanswer!="")
            {               
                if (getanswer == txtanswer.Text.Trim())
                {
                    Label5.BackColor = Color.Red;
                    Panel1.Visible = false;
                    Panel2.Visible = true;
                    Panel3.Visible = false;
                }

                else
                {
                    Response.Write("<script>alert('身份验证失败！')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('没有数据！')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label6.BackColor = Color.Red;
        if (String.Compare(Request.Cookies["yzmcode"].Value, txtiden.Text, true) != 0)
        {
            Response.Write("<script>alert('验证码错误!')</script>");
        }
        else
        {
            try
            {
                string str = "server=QH-20150317LKUF\\SQLEXPRESS;database=sss;uid=sa;pwd=123456";
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                SqlCommand cmd = new SqlCommand("update userlist set upsw='" + txtpsw.Text.Trim() + "'where uname='" + txtname.Text.Trim() + "'", conn);
                int a=cmd.ExecuteNonQuery();
                Response.Write(a);
                SqlCommand cmd1 = new SqlCommand("select upsw from userlist where uname='" + txtname.Text.Trim() + "'", conn);
                getpsw = cmd1.ExecuteScalar().ToString();
                if (getpsw != "")
                {
                    if (getpsw == txtpsw.Text.Trim())
                    {
                        Panel1.Visible = false;
                        Panel2.Visible = false;
                        Panel3.Visible = true;
                    }
                    else
                    {
                        Panel1.Visible = false;
                        Panel2.Visible = true;
                        Panel3.Visible = false;
                        Response.Write("<script>alert('重置upsw失败！')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('没有数据！')</script>");
                 }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }            
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx",false);
    }
    protected void ChangeCode_Click1(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
    }
}