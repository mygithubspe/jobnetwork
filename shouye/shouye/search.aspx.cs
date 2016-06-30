using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class zhuye : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("server=IDEA-PC\\SQLEXPRESS; database=jianzhi;uid=sa;pwd=123456");
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSearch.Attributes.Add("value", "请输入职位或公司");
        txtSearch.Attributes.Add("onfocus", "if(this.value=='请输入职位或公司'){this.value=''}");
        txtSearch.Attributes.Add("onblur", "if(this.value==''){this.value=='请输入职位或公司'}");

        if (Session["uname"] != null)
        {
            Panel.Visible = true;
            PanelLogin.Visible = false;
            Link.Text = Session["uname"].ToString();
        }

        string ss = Session["txtsearch"].ToString();
        str = "select position_id,position,time,salary,company from position where position like '%" + ss + "%' or company like '%" + ss + "%'";
        getGoods(str);
    }

    private void getGoods(string str)
    {

        DataTable dt1 = new DataTable();
        conn.Open();
        SqlDataAdapter cmd = new SqlDataAdapter(str, conn);
        cmd.Fill(dt1);
        conn.Close();
        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = dt1.DefaultView;
        objPds.AllowPaging = true;
        objPds.PageSize = 12;
        int curPage = Convert.ToInt32(this.LabelPage.Text);
        objPds.CurrentPageIndex = curPage - 1;
        if (objPds.CurrentPageIndex < 0)
        {
            objPds.CurrentPageIndex = 0;
        }
        if (objPds.PageCount == 1)
        {
            LinkButtonPrev.Enabled = false;
            LinkButtonNext.Enabled = false;
        }
        else
        {
            if (curPage == 1)
            {
                LinkButtonPrev.Enabled = false;
                LinkButtonNext.Enabled = true;

            }
            if (curPage == objPds.PageCount)
            {
                LinkButtonPrev.Enabled = true;
                LinkButtonNext.Enabled = false;
            }
        }
        this.LabelTotalPage.Text = Convert.ToString(objPds.PageCount);
        GridView1.DataSource = objPds;
        GridView1.DataBind();
    }
    protected void LinkButtonFirst_Click(object sender, EventArgs e)
    {
        this.LabelPage.Text = "1";
        getGoods(str);
    }
    protected void LinkButtonPrev_Click(object sender, EventArgs e)
    {
        this.LabelPage.Text = Convert.ToString(int.Parse(this.LabelPage.Text) - 1);
        getGoods(str);
    }
    protected void LinkButtonNext_Click(object sender, EventArgs e)
    {
        this.LabelPage.Text = Convert.ToString(int.Parse(this.LabelPage.Text) + 1);
        getGoods(str);
    }
    protected void LinkButtonLast_Click(object sender, EventArgs e)
    {
        this.LabelPage.Text = this.LabelTotalPage.Text;
        getGoods(str);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        str = "select position_id,position,salary,company,time from position where position like '%" + LinkButton1.Text + "%'";
        getGoods(str);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        str = "select position_id,position,salary,company,time from position where property like '%" + LinkButton2.Text + "%'";
        getGoods(str);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        str = "select position_id,position,salary,company,time from position where salary like '%" + LinkButton3.Text + "%'";
        getGoods(str);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        str = "select position_id,position,time,salary,company from position where position like '%" + txtSearch.Text + "%' or company like '%" + txtSearch.Text + "%'";
        getGoods(str);
    }
    protected void Link_Click(object sender, EventArgs e)
    {
        Response.Redirect("person_center.aspx");
    }
    protected void lbLogin_Click(object sender, EventArgs e)
    {
        Session["bb"] = "2";
        Response.Redirect("login.aspx");
    }
    protected void lbRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}