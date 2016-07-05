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
        string name = (string)Session["uname"];
        if (txtcompany.Text == "" || txtposition.Text == "" || txtsection.Text == "" || txtarea.Text == "" || txtSdescribe.Text == "" || txtlinkman.Text == "" || txtphone.Text == "" || txtemaill.Text == "")
        {
            Response.Write("<script>alert('请把内容填写完整！')</script>");
        }
        else
        {
            try
            {
                string str = "server=QH-20150317LKUF\\SQLEXPRESS;database=jianzhi;uid=sa;pwd=123456";
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                string strSql;
               
                SqlCommand cmd3 = new SqlCommand("select * from company where uname='" +name  + "'", conn);
                SqlDataReader sdr3 = cmd3.ExecuteReader();
                sdr3.Read();   
                if(sdr3.HasRows)
                {
                    sdr3.Close();
                    SqlCommand cmd1 = new SqlCommand("select * from company where com_name='" + txtcompany.Text.Trim() + "' and uname='" + name+"'", conn);
                    SqlDataReader sdr = cmd1.ExecuteReader();
                    sdr.Read();
                    if (sdr.HasRows)
                    {
                        sdr.Close();
                        if (CheckBox1.Checked)
                        {
                            strSql = "insert into position values('" + txtcompany.Text.Trim() + "','" + txtposition.Text.Trim() + "','" + ddltype.Text + "','" + txtsection.Text.Trim() + "','" + CheckBox1.Text + "','" + ddlsalary.Text + "','" + ddlexperience.Text + "','" + ddleducation.Text + "','" + txtarea.Text.Trim() + "','" + txtSdescribe.Text.Trim() + "','" + txtSdemand.Text.Trim() + "','" + txtlinkman.Text.Trim() + "','" + txtphone.Text.Trim() + "','" + txtemaill.Text.Trim() + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
                            SqlCommand cmd = new SqlCommand(strSql, conn);
                            cmd.ExecuteNonQuery();
                            Response.Write("<script>alert('发布成功!')</script>");
                        }

                        else if (CheckBox2.Checked)
                        {
                            strSql = "insert into position values('" + txtcompany.Text.Trim() + "','" + txtposition.Text.Trim() + "','" + ddltype.Text + "','" + txtsection.Text.Trim() + "','" + CheckBox2.Text + "','" + ddlsalary.Text + "','" + ddlexperience.Text + "','" + ddleducation.Text + "','" + txtarea.Text.Trim() + "','" + txtSdescribe.Text.Trim() + "','" + txtSdemand.Text.Trim() + "','" + txtlinkman.Text.Trim() + "','" + txtphone.Text.Trim() + "','" + txtemaill.Text.Trim() + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
                            SqlCommand cmd = new SqlCommand(strSql, conn);
                            cmd.ExecuteNonQuery();
                            Response.Write("<script>alert('发布成功!')</script>");

                        }
                       
                    }
                    else
                    {
                        Response.Write("<script>alert('信息填写错误!')</script>");
                        Response.Write("<script>alert('发布失败!')</script>");
                    }

                }
                else
                {
                    Response.Write("<script>alert('发布失败!')</script>");
                    Response.Redirect("enterprise.aspx");
                }

                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }       
    }
}