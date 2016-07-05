<%@ Page Language="C#" AutoEventWireup="true" CodeFile="publish.aspx.cs" Inherits="jianzhi_publish" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>发布信息</title>
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
        <div id="yc_header" class="yc_header">
        <div style="text-align:center"; class="h1">
            <asp:Label ID="Label16" runat="server" Font-Size="X-Large" Text="填写职位信息"></asp:Label>
        </div>
        <br />
        <br/>
        <div class="h2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="公司名称:"></asp:Label> &nbsp;
        <asp:TextBox ID="txtcompany" Font-Size="Medium" runat="server"></asp:TextBox>
        </div ><br />
        <br />
        <div class="h2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="职位名称:" Font-Size="Medium"></asp:Label> &nbsp;
        <asp:TextBox ID="txtposition" Font-Size="Medium" runat="server"></asp:TextBox>
        </div><br /><br />
            <div class="h2">
        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="职位类别:"></asp:Label> &nbsp;
        <asp:DropDownList ID="ddltype" runat="server" Font-Size="Medium" Width="162px" Height="31px">
            <asp:ListItem>计算机</asp:ListItem>
            <asp:ListItem>金融/银行</asp:ListItem>
            <asp:ListItem>贸易/制造</asp:ListItem>
            <asp:ListItem>房地产</asp:ListItem>
            <asp:ListItem>服务业</asp:ListItem>
            <asp:ListItem>物流/运输</asp:ListItem>
            <asp:ListItem>人事行政</asp:ListItem>
            <asp:ListItem>外语贸易</asp:ListItem>
            <asp:ListItem>财经法务</asp:ListItem>
            <asp:ListItem>教育咨询</asp:ListItem>
        </asp:DropDownList>
        </div><br /><br />
        <div class="h2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="所属部门:"></asp:Label> &nbsp;
        <asp:TextBox ID="txtsection" Font-Size="Medium" runat="server"></asp:TextBox>
        </div>
        <br /><br />
            <div class="h2">
        <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="工作性质:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Medium" Text="兼职" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox2" runat="server" Text="全职" Font-Size="Medium" />
        </div><br /><br />
        <div class="h2">
        <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="工资待遇:"></asp:Label> &nbsp;
        <asp:DropDownList ID="ddlsalary" Font-Size="Medium" runat="server" Width="165px" Height="32px">
            <asp:ListItem>50-80/天</asp:ListItem>
            <asp:ListItem>80-100/天</asp:ListItem>
            <asp:ListItem>100-200/天</asp:ListItem>
            <asp:ListItem>面议</asp:ListItem>
            <asp:ListItem>1000-1500/月</asp:ListItem>
            <asp:ListItem>1500-2000/月</asp:ListItem>
            <asp:ListItem>2000以上/月</asp:ListItem>
        </asp:DropDownList>
        </div><br />
        <br />
        <br />
        <div class="h2">
        <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="工作经验:"></asp:Label> &nbsp;
        <asp:DropDownList ID="ddlexperience" Font-Size="Medium" runat="server" Width="156px" Height="36px">
            <asp:ListItem>无工作经验</asp:ListItem>
            <asp:ListItem>1-2年工作经验</asp:ListItem>
            <asp:ListItem>2-3年工作经验</asp:ListItem>
            <asp:ListItem>3年以上工作经验</asp:ListItem>
        </asp:DropDownList>
        </div><br />
        <br />
        <div class="h2">
        <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="学历要求:"></asp:Label> &nbsp;
        <asp:DropDownList ID="ddleducation" Font-Size="Medium" runat="server" Width="157px" Height="34px">
            <asp:ListItem>专科以上</asp:ListItem>
            <asp:ListItem>本科以上</asp:ListItem>
            <asp:ListItem>硕士</asp:ListItem>
            <asp:ListItem>博士</asp:ListItem>
        </asp:DropDownList>
        </div><br /><br />
        <div class="h2">
        &nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="工作区域:"></asp:Label> &nbsp;
        <asp:TextBox ID="txtarea" Font-Size="Medium" runat="server"></asp:TextBox>
        </div><br />
        <div style="text-align:right;width:630px" >
            <b><asp:Label ID="Label14" runat="server" Font-Size="Medium" Text="职位描述："></asp:Label> &nbsp;</b>
        </div>
         <div class="h2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSdescribe" runat="server" Font-Size="Medium" Height="80px" TextMode="MultiLine" Width="236px"></asp:TextBox>
        </div>                      
        <br />

        <div style="text-align:right;width:630px" >
       <b> &nbsp;<asp:Label ID="Label15" runat="server" Font-Size="Medium" Text="职位要求："></asp:Label> &nbsp;</b>
        </div>
        <div class="h2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtSdemand" runat="server" Font-Size="Medium" Height="74px" TextMode="MultiLine" Width="243px"></asp:TextBox>
        <br />
        </div>
        <br />
        <div class="h2">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Font-Size="Medium" Text="联系人:"></asp:Label> &nbsp;
        <asp:TextBox ID="txtlinkman" runat="server" Font-Size="Medium" Height="25px"></asp:TextBox>
        </div><br />
        <div class="h2">
        <asp:Label ID="Label12" runat="server" Font-Size="Medium" Text="手机:"></asp:Label> &nbsp;
        <asp:TextBox ID="txtphone" Font-Size="Medium" runat="server"></asp:TextBox>
        </div><br />
        <div class="h2">
        <asp:Label ID="Label13" runat="server" Font-Size="Medium" Text="邮箱:"></asp:Label> &nbsp;
        <asp:TextBox ID="txtemaill" runat="server" Font-Size="Medium"></asp:TextBox>
        </div><br />
        <br />       
        <div class="h2">
        <asp:Button ID="btnpublish" runat="server" Font-Size="X-Large" Text="发 布" BackColor="#FF0066" OnClick="btnpublish_Click" Height="43px" Width="117px" />    
        </div><br />
        <br />
        <br />
        <br />    
    </div>
    </form>
</body>
</html>
