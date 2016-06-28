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
    protected void Page_Load(object sender, EventArgs e)
    {
        string txt = (string)Session["position"];
        
        Label1.Text = txt;
        Label1.ForeColor = Color.Red;
        try
        {
            string str = "server=QH-20150317LKUF\\SQLEXPRESS;database=sss;uid=sa;pwd=123456";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            string str1 = "select pos_des from position where pos_name='" + txt + "'";
            SqlCommand cmd1 = new SqlCommand(str1, conn);
            string get1= cmd1.ExecuteScalar().ToString();
            if (get1!="")
            {
                Label2.Text = get1;
            }
            else
            {
                Response.Write("<script>alert('获取pos_des信息失败！')</script>");
            }
            string str2 = "select property from position where pos_name='" + txt + "'";
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
            string str3 = "select experience from position where pos_name='" + txt + "'";
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
            string str4 = "select education from position where pos_name='" + txt + "'";
            SqlCommand cmd4 = new SqlCommand(str4, conn);
            string get4 = cmd4.ExecuteScalar().ToString();
            if (get4!= "")
            {
                Label5.Text = get4;
            }
            else
            {
                Response.Write("<script>alert('获取education信息失败！')</script>");
            }
            string str5 = "select area from position where pos_name='" + txt + "'";
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
            string str6 = "select demand from position where pos_name='" + txt + "'";
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
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btncollection_Click(object sender, EventArgs e)
    {
        string name = (string)Session["name"];
        //string url = Request.Url.ToString();
        try 
        {
            string str = "server=QH-20150317LKUF\\SQLEXPRESS;database=sss;uid=sa;pwd=123456";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd2 = new SqlCommand("select pos_id from position where uname='" + name + "'", conn);
            string pos_id = cmd2.ExecuteScalar().ToString();
            SqlCommand cmd = new SqlCommand("insert into collection values('" + name + "','" + pos_id + "')", conn);
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
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btnapply_Click(object sender, EventArgs e)
    {
        string name = (string)Session["name"];
        string txt = (string)Session["position"];
        try
        {
            string str = "server=QH-20150317LKUF\\SQLEXPRESS;database=sss;uid=sa;pwd=123456";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into apply values('" + name + "','" + txt + "')", conn);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("select * from collection where uname='" + name + "'", conn);
            SqlDataReader sdr = cmd1.ExecuteReader();
            sdr.Read();
            if (sdr.HasRows)
            {
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