using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
public partial class findqjob : System.Web.UI.Page
{
    SqlConnection conn;
    sqlaa sqla = new sqlaa();
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        //TxtSearch.Attributes.Add("value", "请输入职位或公司名称");
        //TxtSearch.Attributes.Add("onfocus", "if(this.value=='请输入职位或公司名称'){this.value=''}");
       // TxtSearch.Attributes.Add("onblur", "if(this.value==''){this.value='请输入职位或公司名称'}");
        conn = new SqlConnection("server=QH-20150317LKUF\\SQLEXPRESS;database=jianzhi;uid=sa;pwd=123456");
        
            str = "select pos_id,pos_name,com_name,property,time from position where property='全职' order by pos_id desc";
            getGoods(str);
            if (Session["uname"] != null)
            {
                Panel.Visible = true;
                PanelLogin.Visible = false;
                Link.Text = Session["uname"].ToString();
            }
    }
    private void getGoods(string str)
    {
       DataTable dt1 = new DataTable();
       // conn.Open();
       // SqlCommand cmd6 = new SqlCommand("select uname from userlist where uid='" + userid + "'", conn);
       // uname = cmd6.ExecuteScalar().ToString();
        // SqlCommand cmd7 = new SqlCommand("select pos_id from collection where uname='" + uname + "'",conn);
        // int posid = (int)cmd7.ExecuteScalar();
       // string str="select pos_id,pos_name,com_name,time from position where property='全职' order by pos_id desc";
        dt1 = sqla.ReadTable(conn,str);
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
        GridView1.DataKeyNames = new string[] { "pos_id" };
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
  
    protected void Lbtall1_Click(object sender, EventArgs e)
    {
         
         
        Response.Redirect("findqjob.aspx");
        

    }
    protected void lbtbeijing_Click(object sender, EventArgs e)
    {
       
            str = "select pos_id,pos_name,com_name,property,time from position where property='全职'  and area like '%北京%' order by pos_id desc";
            getGoods(str);
        
     
    }
   
    protected void Lbtjisuanji_Click(object sender, EventArgs e)
    {
        
            str = "select pos_id,pos_name,com_name,property,time from position where property='全职'  and pos_type like '%计算机%'  order by pos_id desc";
            getGoods(str);
        
    }
   
    protected void Lbtall2_Click(object sender, EventArgs e)
    {
        Response.Redirect("findqjob.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (TxtSearch.Text.Trim() == "")
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
        Session["ee"] = "5";
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
    protected void LinkButtonStu_Click(object sender, EventArgs e)
    {
        if (Panel.Visible == false)
            Response.Redirect("login.aspx");
        else
            Response.Redirect("stu_complain.aspx");
    }
}