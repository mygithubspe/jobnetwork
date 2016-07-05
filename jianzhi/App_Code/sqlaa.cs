using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// connectsql 的摘要说明
/// </summary>
public class sqlaa
{
    
	public sqlaa()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}


    public DataTable ReadTable(SqlConnection conn,string sqlstr)
    {
        DataTable dt = new DataTable();
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter(sqlstr, conn);
        sda.Fill(dt);
        conn.Close();
        return dt;
    }
}