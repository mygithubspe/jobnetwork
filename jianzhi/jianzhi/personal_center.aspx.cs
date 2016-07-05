using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;

public partial class personal_center : System.Web.UI.Page
{
    SqlConnection conn;
    int  userid;
    SqlCommand cmd1;
    SqlDataAdapter sda;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindYear();
            BindMonth();
        }
        userid = 1;
        if(Session["userid"]==null)
        {
            Response.Redirect("login.aspx");
        }else
          {
            userid = (int)Session["userid"];
            conn = new SqlConnection("server=QH-20150317LKUF\\SQLEXPRESS;database=jianzhi;uid=sa;pwd=123456");
            getGoods();
            getGoods1();
            if (!IsPostBack)
            {
                
                try
                {
                    Label1.Text = "";
                    conn.Open();

                    cmd1 = new SqlCommand("select * from information where login_id='" + userid + "'", conn);
                    SqlDataReader sdr = cmd1.ExecuteReader();
                    sdr.Read();
                    if (sdr.HasRows)
                    {

                        btn_information.Visible = false;
                        btnAlter.Visible = true;
                        // Lable1.Text = sdr[1].ToString();
                        txtName.Text = sdr[2].ToString();
                        txtSex.Text = sdr[3].ToString();
                        txtAge.Text = sdr[4].ToString();
                        txtSchool.Text = sdr[5].ToString();
                        txtAcademy.Text = sdr[6].ToString();
                        txtMajor.Text = sdr[7].ToString();
                        txtSpecialty.Text = sdr[8].ToString();

                        sdr.Close();
                        conn.Close();
                    }
                    else
                    {
                        btn_information.Visible = true;
                        btnAlter.Visible = false;
                        conn.Close();
                    }

                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                    //sdr.close();
                    conn.Close();
                }
            }
        }
       
        
        
        
    }
   protected void BindYear()
    {
        ddlYear.Items.Clear();
        int startYear = DateTime.Now.Year - 40;
        int currentYear = DateTime.Now.Year;
       for(int i=startYear;i<=currentYear;i++)
       {
           ddlYear.Items.Add(new ListItem(i.ToString()));
       }
       ddlYear.SelectedValue = currentYear.ToString();

    }
   
    protected void BindMonth()
   {
       ddlMonth.Items.Clear();
        for(int i=1;i<=12;i++)
        {
            ddlMonth.Items.Add(i.ToString());
        }
   }
    protected void btninformation_Click(object sender, EventArgs e)
    {
        pan_information.Visible = true;
        pan_resume.Visible = false;
       
       
        pan_findjob.Visible = false;
       
        pan_collection.Visible = false;
    }
    protected void btnresume_Click(object sender, EventArgs e)
    {
        pan_information.Visible = false;
        pan_resume.Visible = true;
        
        
        pan_findjob.Visible = false;
       
        pan_collection.Visible = false;
       
            try
            {
               
                Label5.Text = "";
                Label4.Text = "";
                conn.Open();

                cmd1 = new SqlCommand("select * from resume where login_id='" + userid + "'", conn);
                SqlDataReader sdr = cmd1.ExecuteReader();
                sdr.Read();
                if (sdr.HasRows)
                {
                    btnPublishresume.Visible = false;
                    btnAresume.Visible = true;

                    txttile.Text = sdr[2].ToString();
                    txtjobstyle.Text = sdr[3].ToString();
                     txtrealname. Text = sdr[4].ToString();
                    ddSex.Text = sdr[5].ToString();
                    ddlYear. Text = sdr[6].ToString();
                    ddlMonth.Text = sdr[7].ToString();
                    txtUniversity. Text = sdr[8].ToString();
                    txtProfession.Text = sdr[9].ToString();
                    ddlWorkyear.Text = sdr[10].ToString();
                    ddlEducation.Text = sdr[11].ToString();
                   txtWorkplace.Text = sdr[12].ToString();
                    ddlEmoney.Text = sdr[13].ToString();
                    txtPhone.Text = sdr[14].ToString();
                    txtMail.Text = sdr[15].ToString();
                    txtHome.Text = sdr[16].ToString();
                    txtDescribe.Text = sdr[17].ToString();
                    sdr.Close();
                    conn.Close();
                }
                else
                {
                    btnPublishresume.Visible =true;
                    btnAresume.Visible = false;
                    conn.Close();
                }

            }
            catch (Exception ex)
            {
                Label4.Text = ex.Message;
                //sdr.close();
                conn.Close();
            }
        
    }
   
   
    
    protected void btncollection_Click(object sender, EventArgs e)
    {
        pan_information.Visible = false;
        pan_resume.Visible = false;
      
        
        pan_findjob.Visible = false;
       
        pan_collection.Visible = true;


    }
    protected void btnfindjob_Click(object sender, EventArgs e)
    {
        pan_information.Visible = false;
        pan_resume.Visible = false;
     
        pan_findjob.Visible = true;
        
        pan_collection.Visible = false;
    }
    protected void btnemploy_Click(object sender, EventArgs e)
    {
        pan_information.Visible = false;
        pan_resume.Visible = false;
       
       
        pan_findjob.Visible = false;
        
        pan_collection.Visible = false;
    }


    protected void btn_information_Click(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = "";
            Label3.Text = "";
            conn.Open();
           SqlCommand cmd2 = new SqlCommand("insert into information values( '" +userid +"','"+ txtName.Text.Trim() + "','" + txtSex.Text.Trim() + "','" + txtAge.Text.Trim() + "','" + txtSchool.Text.Trim() + "','" + txtAcademy.Text.Trim() + "','" + txtMajor.Text.Trim() + "','" + txtSpecialty.Text.Trim() + "')", conn);
            cmd2.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('保存成功!')</script>");
        }
        catch(Exception ex)
        {
           // Label3.Text = ex.Message;
           Label1.Text="您未进行任何改动，请重试！";
           conn.Close();
        }
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("homePage.aspx");
    }
    protected void btnPublishresume_Click(object sender, EventArgs e)
    {
        if (txttile.Text.Trim() !=""&& txtProfession.Text.Trim() != "" &&txtrealname.Text.Trim() !="" &&ddSex.Text.Trim() !="" &&ddlYear.Text.Trim() != "" &&ddlMonth.Text.Trim() !="" && txtUniversity.Text.Trim() != "" && txtAcademy.Text.Trim() !="" && ddlWorkyear.Text.Trim() != "" && ddlEducation.Text.Trim() != "" &&txtWorkplace.Text.Trim() != "" && ddlEmoney.Text.Trim() != "" && txtPhone.Text.Trim() != "")
        {
            try
            {
                Label5.Text = "";
                Label4.Text = "";
                conn.Open();
                SqlCommand cmd4 = new SqlCommand("insert into resume values( '" + userid + "','" + txttile.Text.Trim() + "','" + txtProfession.Text.Trim() + "','" + txtrealname.Text.Trim() + "','" + ddSex.Text.Trim() + "','" + ddlYear.Text.Trim() + "','" + ddlMonth.Text.Trim() + "','" + txtUniversity.Text.Trim() + "','" + txtAcademy.Text.Trim() + "','" + ddlWorkyear.Text.Trim() + "','" + ddlEducation.Text.Trim() + "','" + txtWorkplace.Text.Trim() + "','" + ddlEmoney.Text.Trim() + "','" + txtPhone.Text.Trim() + "','" + txtMail.Text.Trim() + "','" + txtHome.Text.Trim() + "','" + txtDescribe.Text.Trim() + "')", conn);
                cmd4.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('发布成功!')</script>");
            }
            catch (Exception ex)
            {
                Label4.Text = ex.Message;
               // Label5.Text = "您未进行任何改动，请重试！";
                conn.Close();
            }
        }
        else
        {
            Response.Write("<script>alert('请输入内容!')</script>");
        }
      
    }
    protected void btnAlter_Click(object sender, EventArgs e)
    {
        
        try
        {
            Label1.Text = "";
            conn.Open();
            //Ltitle.Text = txtName.Text.Trim();
           SqlCommand cmd3 = new SqlCommand("update information set name='"+ txtName.Text.Trim() + "',sex='" + txtSex.Text.Trim() + "',age='" + txtAge.Text.Trim() + "',school='" + txtSchool.Text.Trim() + "',xueyuan='" + txtAcademy.Text.Trim() + "',profession='" + txtMajor.Text.Trim() + "',feature='" + txtSpecialty.Text.Trim() + "'  where login_id='"+userid+"'", conn);
           cmd3.ExecuteNonQuery();
          // Lable1.Text = cmd3.ExecuteNonQuery().ToString();
            conn.Close();
            Response.Write("<script>alert('修改成功!')</script>");
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
            Response.Write("<script>alert('修改失败!')</script>");
            conn.Close();
        }
    }

    protected void btnAresume_Click(object sender, EventArgs e)
    {
        try
        {
            Label4.Text = "";
            Label5.Text = "";
           
            conn.Open();
           // Ltitle.Text = txtName.Text.Trim();
            SqlCommand cmd5 = new SqlCommand("update resume set title= '"+txttile.Text.Trim()+ "',profession='"+txtProfession.Text.Trim()+"',realname='"+txtrealname.Text.Trim()+"',sex='"+ddSex.Text.Trim()+"',year='"+ddlYear.Text.Trim()+"',month='"+ddlMonth.Text.Trim()+"',university='"+txtUniversity.Text.Trim()+"',major='"+txtMajor.Text.Trim()+"',workyear='"+ddlWorkyear.Text.Trim ()+"',education='"+ddlEducation.Text.Trim()+"',area='"+txtWorkplace.Text.Trim()+"',money='"+ddlEmoney.Text.Trim()+"',phone='"+txtPhone.Text.Trim()+"',mail='"+txtMail.Text.Trim()+"',home='"+txtHome.Text.Trim()+"',describe='"+txtDescribe.Text.Trim()+"'  where login_id='" + userid + "'", conn);
            cmd5.ExecuteNonQuery();
            // Lable1.Text = cmd3.ExecuteNonQuery().ToString();
            conn.Close();
            Response.Write("<script>alert('修改成功!')</script>");
        }
        catch (Exception ex)
        {
            Label4.Text = ex.Message;
            Response.Write("<script>alert('修改失败!')</script>");
            conn.Close();
        }
    }
    string uname;
    private void getGoods()
    {
        DataTable dt1 = new DataTable();
        conn.Open();
         SqlCommand cmd6 = new SqlCommand("select uname from userlist where uid='"+userid+"'",conn );
            uname=cmd6.ExecuteScalar().ToString ();
           // SqlCommand cmd7 = new SqlCommand("select pos_id from collection where uname='" + uname + "'",conn);
           // int posid = (int)cmd7.ExecuteScalar();
        SqlDataAdapter sda1 = new SqlDataAdapter("select pos_id,pos_name,com_name,time from collection where uname='"+uname+"'",conn);
        sda1.Fill(dt1);
        conn.Close();
        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = dt1.DefaultView;
        objPds.AllowPaging = true;
        objPds.PageSize = 12;
        int curPage = Convert.ToInt32(this.LabelPage.Text);
        objPds.CurrentPageIndex = curPage - 1;
        if(objPds.CurrentPageIndex<0)
        {
            objPds.CurrentPageIndex = 0;
        }
        if(objPds.PageCount==1)
        {
            LinkButtonPrev.Enabled = false;
            LinkButtonNext.Enabled = false;
        }
        else
        {
            if(curPage==1)
            {
                LinkButtonPrev.Enabled = false;
                LinkButtonNext.Enabled = true;

            }
            if(curPage==objPds.PageCount)
            {
                LinkButtonPrev.Enabled = true ;
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
        getGoods();
    }
    protected void LinkButtonPrev_Click(object sender, EventArgs e)
    {
        this.LabelPage.Text = Convert.ToString(int.Parse(this.LabelPage.Text) - 1);
        getGoods();
    }
    protected void LinkButtonNext_Click(object sender, EventArgs e)
    {
        this.LabelPage.Text = Convert.ToString(int.Parse(this.LabelPage.Text) + 1);
        getGoods();
    }
    protected void LinkButtonLast_Click(object sender, EventArgs e)
    {
        this.LabelPage.Text = this.LabelTotalPage.Text;
        getGoods();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.DataRow)
        {
            try
            {
                LinkButton lnkbtnDelete = (LinkButton)e.Row.Cells[4].Controls[0];
               // lnkbtnDelete.OnClientClick = "return confirm('您真要删除该记录吗？');";
            }
            catch
            {

            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       
        string sql = "delete from collection where pos_id ='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "' and uname='" + uname + "'";
        conn.Open();
        SqlCommand cmd8 = new SqlCommand(sql,conn);
        cmd8.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("personal_center.aspx");
    }
    string uname1;
    private void getGoods1()
    {
        DataTable dt1 = new DataTable();
        conn.Open();
        SqlCommand cmd6 = new SqlCommand("select uname from userlist where uid='" + userid + "'", conn);
        uname1 = cmd6.ExecuteScalar().ToString();
        // SqlCommand cmd7 = new SqlCommand("select pos_id from collection where uname='" + uname + "'",conn);
        // int posid = (int)cmd7.ExecuteScalar();
        SqlDataAdapter sda1 = new SqlDataAdapter("select pos_id,pos_name,com_name,time from apply where uname='" + uname1 + "'", conn);
        sda1.Fill(dt1);
        conn.Close();
        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = dt1.DefaultView;
        objPds.AllowPaging = true;
        objPds.PageSize = 12;
        int curPage = Convert.ToInt32(this.LabelPage1.Text);
        objPds.CurrentPageIndex = curPage - 1;
        if (objPds.CurrentPageIndex < 0)
        {
            objPds.CurrentPageIndex = 0;
        }
        if (objPds.PageCount == 1)
        {
            LinkButtonPrev1.Enabled = false;
            LinkButtonNext1.Enabled = false;
        }
        else
        {
            if (curPage == 1)
            {
                LinkButtonPrev1.Enabled = false;
                LinkButtonNext1.Enabled = true;

            }
            if (curPage == objPds.PageCount)
            {
                LinkButtonPrev1.Enabled = true;
                LinkButtonNext1.Enabled = false;
            }
        }
        this.LabelTotalPage1.Text = Convert.ToString(objPds.PageCount);
        GridView2.DataSource = objPds;
        GridView2.DataKeyNames = new string[] { "pos_id" };
        GridView2.DataBind();

    }
    protected void LinkButtonFirst1_Click(object sender, EventArgs e)
    {
        this.LabelPage1.Text = "1";
        getGoods1();
    }
    protected void LinkButtonPrev1_Click(object sender, EventArgs e)
    {
        this.LabelPage1.Text = Convert.ToString(int.Parse(this.LabelPage1.Text) - 1);
        getGoods1();
    }
    protected void LinkButtonNext1_Click(object sender, EventArgs e)
    {
        this.LabelPage1.Text = Convert.ToString(int.Parse(this.LabelPage1.Text) + 1);
        getGoods1();
    }
    protected void LinkButtonLast1_Click(object sender, EventArgs e)
    {
        this.LabelPage1.Text = this.LabelTotalPage1.Text;
        getGoods1();
    }

    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            try
            {
                LinkButton lnkbtnDelete1 = (LinkButton)e.Row.Cells[4].Controls[0];
               // lnkbtnDelete1.OnClientClick = "return confirm('您真要删除该记录吗？');";
            }
            catch
            {

            }
        }
    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        string sql = "delete from apply where pos_id ='" + GridView2.DataKeys[e.RowIndex].Value.ToString() + "' and uname='" + uname1 + "'";
        conn.Open();
        SqlCommand cmd8 = new SqlCommand(sql, conn);
        cmd8.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("personal_center.aspx");
    }



   
}