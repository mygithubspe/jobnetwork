using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class complain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string name = (string)Session["uname"];
        try
        {
            string str = "server=QH-20150317LKUF\\SQLEXPRESS;database=jianzhi;uid=sa;pwd=123456";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("select * from company where com_name='" + txtcom.Text + "'", conn);
            SqlDataReader sdr = cmd1.ExecuteReader();
            sdr.Read();
            if (sdr.HasRows)
            {
                sdr.Close();
                SqlCommand cmd = new SqlCommand("insert into complain values('" + name + "','" + txtcom.Text + "','" + CheckBox1.Text + "," + CheckBox3.Text + "," + CheckBox3.Text + "," + CheckBox4.Text + "," + CheckBox5.Text + "," + CheckBox6.Text + "," + CheckBox7.Text + "," + CheckBox8.Text + "," + complain_txt.Text + "')", conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('评价成功！')</script>");
            }
            else
            {
                Response.Write("<script>alert('请确认是否存在该企业!')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("homePage.aspx");
    }
}