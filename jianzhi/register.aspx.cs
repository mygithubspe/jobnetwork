using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class jianzhi_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtname.Attributes.Add("value","请输入用户名/手机/邮箱");
        txtname.Attributes.Add("onfocus", "if(this.value=='请输入用户名/手机/邮箱'){this.value=''}");
        txtname.Attributes.Add("onblur", "if(this.value==''){this.value='请输入用户名/手机/邮箱'}");

        txtiden.Attributes.Add("value", "请输入图片验证码");
        txtiden.Attributes.Add("onfocus", "if(this.value=='请输入图片验证码'){this.value=''}");
        txtiden.Attributes.Add("onblur", "if(this.value==''){this.value='请输入图片验证码'}");


    }


    protected void btnregister_Click(object sender, EventArgs e)
    {
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
                string strSql = "insert into userlist values('" + txtname.Text.Trim() + "','" + txtpsw.Text.Trim() +"','"+ddlproblem.Text.Trim()+ "','"+txtanswer.Text.Trim()+"')";
                SqlCommand cmd = new SqlCommand(strSql, conn);
                cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand("select * from userlist where uname='" + txtname.Text.Trim() + "'", conn);
                SqlDataReader sdr = cmd1.ExecuteReader();
                sdr.Read();
                if (sdr.HasRows)
                {
                    Response.Write("<script>alert('注册成功!')</script>");
                    Response.Redirect("login.aspx", false);                    
                }
                else
                {
                    Response.Write("<script>alert('注册失败!')</script>");
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
        Response.Redirect("agreement.aspx",true );
        //Response.Write("<script>window.open('agreement.aspx','_blank')</script>");
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string str = "server=QH-20150317LKUF\\SQLEXPRESS;database=sss;uid=sa;pwd=123456";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from userlist where uname='" + txtname.Text.Trim() + "'", conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            if (sdr.HasRows)
            {
                Label1.Text = "uname已存在！";
            }
            else
            {
                if (txtname.Text.Trim() == "")
                {
                    Label1.Text = "uname不能为空!";
                }
                else {
                    Label1.Text = "√";
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
   /* protected void txtpsw_TextChanged(object sender, EventArgs e)
    {
        if (6 < txtpsw.Text.ToList().Count() && txtpsw.Text.ToList().Count()<20)
        {
            Label2.Text = "√";
        }
        else
        {
            if (txtname.Text.Trim() != "")
            {
                Label2.Text = "密码应该为6-20位";
            }
            else
            {
                Label1.Text = "请输入密码！";
            }
            
        }
    }*/
    protected void ChangeCode_Click(object sender, EventArgs e)
    {

    }
}
