<%@ Page Language="C#" AutoEventWireup="true" CodeFile="publish.aspx.cs" Inherits="jianzhi_publish" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>发布信息</title>

</head>
<body style="text-align:center">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="公司名称:"></asp:Label>
        <asp:TextBox ID="txtcompany" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="职位名称:"></asp:Label>
        <asp:TextBox ID="txtposition" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="职位类别:"></asp:Label>
        <asp:DropDownList ID="ddltype" runat="server" Width="144px">
            <asp:ListItem>IT互联网</asp:ListItem>
            <asp:ListItem>市场商务</asp:ListItem>
            <asp:ListItem>人事行政</asp:ListItem>
            <asp:ListItem>外语贸易</asp:ListItem>
            <asp:ListItem>财经法务</asp:ListItem>
            <asp:ListItem>教育咨询</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="所属部门:"></asp:Label>
        <asp:TextBox ID="txtsection" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="工作性质:"></asp:Label>
        &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="兼职" />
&nbsp;
        <asp:CheckBox ID="CheckBox2" runat="server" Text="全职" />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="工资待遇:"></asp:Label>
        <asp:DropDownList ID="ddlsalary" runat="server" Width="147px">
            <asp:ListItem>50-80/天</asp:ListItem>
            <asp:ListItem>80-100/天</asp:ListItem>
            <asp:ListItem>100-200/天</asp:ListItem>
            <asp:ListItem>面议</asp:ListItem>
            <asp:ListItem>1000-1500/月</asp:ListItem>
            <asp:ListItem>1500-2000/月</asp:ListItem>
            <asp:ListItem>2000以上/月</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="工作经验:"></asp:Label>
        <asp:DropDownList ID="ddlexperience" runat="server" Width="144px">
            <asp:ListItem>无工作经验</asp:ListItem>
            <asp:ListItem>1-2年工作经验</asp:ListItem>
            <asp:ListItem>2-3年工作经验</asp:ListItem>
            <asp:ListItem>3年以上工作经验</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="学历要求:"></asp:Label>
        <asp:DropDownList ID="ddleducation" runat="server" Width="143px">
            <asp:ListItem>专科以上</asp:ListItem>
            <asp:ListItem>本科以上</asp:ListItem>
            <asp:ListItem>硕士</asp:ListItem>
            <asp:ListItem>博士</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label9" runat="server" Text="工作区域:"></asp:Label>
        <asp:TextBox ID="txtarea" runat="server"></asp:TextBox>
        <br />
        <br />
                              <div style="text-align:center; height: 20px;width:620px">
                                  <label style="float:right; width: 82px; height: 21px;">职位描述：</label></div>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                  &nbsp;<div>
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:TextBox ID="txtSdescribe" runat="server" Font-Size="Medium" Height="80px" TextMode="MultiLine" Width="236px"></asp:TextBox>
                                        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
                              <div style="text-align:center; height: 20px;width:620px">
                                  <label style="float:right; width: 82px; height: 21px;">职位要求：</label>
                              </div>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                  &nbsp;<div>
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                      <asp:TextBox ID="txtSdemand" runat="server" Font-Size="Medium" Height="74px" TextMode="MultiLine" Width="243px"></asp:TextBox>
                                        <br />
                                        </div>
        <br />
        <asp:Label ID="Label11" runat="server" Text="联系人:"></asp:Label>
        <asp:TextBox ID="txtlinkman" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="手机:"></asp:Label>
        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Text="邮箱:"></asp:Label>
        <asp:TextBox ID="txtemaill" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />       
        <asp:Button ID="btnpublish" runat="server" Font-Size="X-Large" Text="发 布" BackColor="#FF0066" OnClick="btnpublish_Click" />    
        <br />
        <br />
        <br />
        <br />    
    </div>
    </form>
</body>
</html>
