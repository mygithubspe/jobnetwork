using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;

public partial class jianzhi_show : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("server=QH-20150317LKUF\\SQLEXPRESS;database=jianzhi;uid=sa;pwd=123456");
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        string pid;
        Session["gg"] = "7";
        if (Session["uname"] != null)
        {
            Panel.Visible = true;
            PanelLogin.Visible = false;
            Link.Text = Session["uname"].ToString();
        }
        //int pid = (int)Session["pos_id"]; 
        Label1.ForeColor = Color.Red; 
        if (Request.QueryString["id"] != null)
        {
            pid = Request.QueryString["id"].ToString();
            try
            {               
                conn.Open();
                string Str = "select pos_name from position where pos_id='" + pid + "'";
                SqlCommand cmd = new SqlCommand(Str, conn);
                string getname = cmd.ExecuteScalar().ToString();
                Label1.Text = getname;
                string str1 = "select pos_des from position where pos_id='" + pid + "'";
                SqlCommand cmd1 = new SqlCommand(str1, conn);
                string get1 = cmd1.ExecuteScalar().ToString();
                if (get1 != "")
                {
                    Label2.Text = get1;
                }
                else
                {
                    Response.Write("<script>alert('获取pos_des信息失败！')</script>");
                }
                string str2 = "select property from position where pos_id='" + pid + "'";
                SqlCommand cmd2 = new SqlCommand(str2, conn);
                string get2 = cmd2.ExecuteScalar().ToString();
                if (get2 != "")
                {
                    Label3.Text = get2;
                }
                else
                {
                    Response.Write("<script>alert('获取property信息失败！')</script>");
                }
                string str3 = "select experience from position where pos_id='" + pid + "'";
                SqlCommand cmd3 = new SqlCommand(str3, conn);
                string get3 = cmd3.ExecuteScalar().ToString();
                if (get3 != "")
                {
                    Label4.Text = get3;
                }
                else
                {
                    Response.Write("<script>alert('获取experience信息失败！')</script>");
                }
                string str4 = "select education from position where pos_id='" + pid + "'";
                SqlCommand cmd4 = new SqlCommand(str4, conn);
                string get4 = cmd4.ExecuteScalar().ToString();
                if (get4 != "")
                {
                    Label5.Text = get4;
                }
                else
                {
                    Response.Write("<script>alert('获取education信息失败！')</script>");
                }
                string str5 = "select area from position where pos_id='" + pid + "'";
                SqlCommand cmd5 = new SqlCommand(str5, conn);
                string get5 = cmd5.ExecuteScalar().ToString();
                if (get5 != "")
                {
                    Label6.Text = get5;
                }
                else
                {
                    Response.Write("<script>alert('获取area信息失败！')</script>");
                }
                string str6 = "select pos_demand from position where pos_id='" + pid + "'";
                SqlCommand cmd6 = new SqlCommand(str6, conn);
                string get6 = cmd6.ExecuteScalar().ToString();
                if (get6 != "")
                {
                    Label7.Text = get6;
                }
                else
                {
                    Response.Write("<script>alert('获取demand信息失败！')</script>");
                }
                string str7 = "select time from position where pos_id='" + pid + "'";
                SqlCommand cmd7 = new SqlCommand(str7, conn);
                string get7 = cmd7.ExecuteScalar().ToString();
                if (get7 != "")
                {
                    Label8.Text = get7;
                }
                else
                {
                    Response.Write("<script>alert('获取time信息失败！')</script>");
                }
                string str8 = "select com_name from position where pos_id='" + pid + "'";
                SqlCommand cmd8 = new SqlCommand(str8, conn);
                string get8 = cmd8.ExecuteScalar().ToString();
                if (get8 != "")
                {
                    Label9.Text = get8;
                }
                else
                {
                    Response.Write("<script>alert('获取com_name信息失败！')</script>");
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                conn.Close();
            }
        }    
        else
        {
            Response.Write("<script>alert('传值失败！')</script>");
        }
        
    }
    protected void btncollection_Click(object sender, EventArgs e)
    {
        string name = (string)Session["uname"];
        Session["gg"] = "7";
        //string url = Request.Url.ToString();
        if (Session["uname"] == null)
        {
            Response.Redirect("login.aspx", false);
        }
        else
        {
            try
            {
                
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("select pos_id from position where pos_name='" + Label1.Text + "' and com_name='" + Label9.Text + "'", conn);
                string pos_id = cmd2.ExecuteScalar().ToString();
                SqlCommand cmd = new SqlCommand("insert into collection values('" + name + "','" + pos_id + "','" + Label1.Text + "','" + Label9.Text + "','" + Label8.Text  + "')", conn);
                cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand("select * from collection where uname='" + name + "'", conn);
                SqlDataReader sdr = cmd1.ExecuteReader();
                sdr.Read();
                if (sdr.HasRows)
                {
                    Response.Write("<script>alert('收藏成功!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('收藏失败!')</script>");
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
    protected void btnapply_Click(object sender, EventArgs e)
    {
        string name = (string)Session["uname"];
        if (Session["uname"]==null)
        {
            Response.Redirect("login.aspx", false);
        }
        else
        {
            try
            {
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("select pos_id from position where pos_name='" + Label1.Text + "' and com_name='" + Label9.Text + "'", conn);
                string pos_id = cmd2.ExecuteScalar().ToString();
                SqlCommand cmd = new SqlCommand("insert into apply values('" + name + "','" + pos_id + "','" + Label1.Text + "','" + Label9.Text + "','" + Label8.Text + "')", conn);
                cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand("select * from apply where uname='" + name + "'", conn);
                SqlDataReader sdr = cmd1.ExecuteReader();
                sdr.Read();
                if (sdr.HasRows)
                {
                    conn.Close();
                    Response.Write("<script>alert('申请成功!')</script>");

                }
                else
                {
                    Response.Write("<script>alert('申请失败!')</script>");
                }
               
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
    protected void LinkButtonStu_Click(object sender, EventArgs e)
    {
        if (Panel.Visible == false)
            Response.Redirect("login.aspx");
        else
            Response.Redirect("stu_complain.aspx");
    }
    protected void LinkButtonLogin_Click(object sender, EventArgs e)
    {
        Session["ee"] = "5";
        Response.Redirect("login.aspx");
    }
    protected void LinkButtonRegist_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void Link_Click(object sender, EventArgs e)
    {
        Response.Redirect("person_center.aspx");
    }
    protected void LinkButtonPublic_Click(object sender, EventArgs e)
    {
        conn.Open();
        string ss = null;
        if (Session["uname"] != null)
        {
            string s = Session["uname"].ToString();
            str = "select iden from userlist where uname='" + s + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            ss = cmd.ExecuteScalar().ToString().Trim();
            conn.Close();
        }
        if (Panel.Visible == false || ss.Equals("普通用户"))

            Response.Redirect("login.aspx");
        else
            Response.Redirect("publish.aspx");
    }
}