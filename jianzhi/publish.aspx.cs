using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class jianzhi_publish : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnpublish_Click(object sender, EventArgs e)
    {
        Session["position"] = txtposition.Text;
        if (txtcompany.Text == "" || txtposition.Text == "" || txtsection.Text == "" || txtarea.Text == "" || txtSdescribe.Text == "" || txtlinkman.Text == "" || txtphone.Text == "" || txtemaill.Text == "")
        {
            Response.Write("<script>alert('请把内容填写完整！')</script>");
        }
        else
        {
            try
            {
                string str = "server=QH-20150317LKUF\\SQLEXPRESS;database=sss;uid=sa;pwd=123456";
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                string strSql;
                if (CheckBox1.Checked)
                    strSql = "insert into position values('" + txtcompany.Text.Trim() + "','" + txtposition.Text.Trim() + "','" + ddltype.Text + "','" + txtsection.Text.Trim() + "','" + CheckBox1.Text + "','" + ddlsalary.Text + "','" + ddlexperience.Text + "','" + ddleducation.Text + "','" + txtarea.Text.Trim() + "','" + txtSdescribe.Text.Trim() + "','" + txtSdemand.Text.Trim() + "','" +txtlinkman.Text.Trim() + "','" + txtphone.Text.Trim() + "','" + txtemaill.Text.Trim() + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
                else
                    strSql = "insert into position values('" + txtcompany.Text.Trim() + "','" + txtposition.Text.Trim() + "','" + ddltype.Text + "','" + txtsection.Text.Trim() + "','" + CheckBox2.Text + "','" + ddlsalary.Text + "','" + ddlexperience.Text + "','" + ddleducation.Text + "','" + txtarea.Text.Trim() + "','" + txtSdescribe.Text.Trim() + "','" + txtSdemand.Text.Trim() + "','" + txtlinkman.Text.Trim() + "','" + txtphone.Text.Trim() + "','" + txtemaill.Text.Trim() + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
                SqlCommand cmd = new SqlCommand(strSql, conn);
                cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand("select * from position where pos_name='" + txtposition.Text.Trim() + "' and com_name='" + txtcompany.Text.Trim() + "'", conn);
                SqlDataReader sdr = cmd1.ExecuteReader();
                sdr.Read();
                if (sdr.HasRows)
                {
                    Response.Write("<script>alert('发布成功!')</script>");
                    Response.Redirect("show.aspx", false);
                }
                else
                {
                    Response.Write("<script>alert('发布失败!')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }       
    }
}