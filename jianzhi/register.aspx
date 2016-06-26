<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="jianzhi_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册</title>
    <style type="text/css">
        body{
            text-align:center;
            background-image:url(../img/register.jpg);
            background-repeat:no-repeat;
            background-size:cover;
            overflow:hidden;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;<asp:Label ID="Label5" runat="server" Text="用户名："></asp:Label>
        <asp:TextBox ID="txtname" runat="server" Font-Size="Medium" AutoPostBack="True" OnTextChanged="txtname_TextChanged"></asp:TextBox>                     
        
        
        <asp:Label ID="Label1" runat="server"></asp:Label>
         
            
        <br />
         
            
        <br />
        &nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="密码："></asp:Label>
&nbsp;<asp:TextBox ID="txtpsw" runat="server" Font-Size="Medium" TextMode="Password"></asp:TextBox>
         
    
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="确认密码："></asp:Label>
&nbsp;<asp:TextBox ID="txtrepsw" runat="server" Font-Size="Medium" TextMode="Password"></asp:TextBox>
         
    
        <asp:CompareValidator ID="cvpsw" runat="server" ControlToCompare="txtpsw" ControlToValidate="txtrepsw" ErrorMessage="密码与确认密码不一致！" SetFocusOnError="true"></asp:CompareValidator>
         
    
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="安全问题："></asp:Label>
        <asp:DropDownList ID="ddlproblem" runat="server" Font-Size="Medium" Height="27px" style="margin-left: 0px" Width="194px">
            <asp:ListItem>你的学号？</asp:ListItem>
            <asp:ListItem>你的专业？</asp:ListItem>
            <asp:ListItem>你的生日？</asp:ListItem>
            <asp:ListItem>你的家庭住址？</asp:ListItem>
            <asp:ListItem>你的真实姓名？</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="安全答案："></asp:Label>
        <asp:TextBox ID="txtanswer" runat="server" Font-Size="Medium" Width="189px"></asp:TextBox>
         
    
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="验证码："></asp:Label>
&nbsp;<asp:TextBox ID="txtiden" runat="server" Font-Size="Medium"></asp:TextBox>
    
        <asp:ImageButton ID="yzm" runat="server" ImageUrl="imagecode.aspx" />
        <asp:LinkButton ID="ChangeCode" runat="server">看不清楚？换一个</asp:LinkButton>
         
    
        <br />       
        <br />
        <asp:CheckBox ID="cbagree" runat="server" Text="同意" Checked="True" Font-Size="Medium" />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">注册协议</asp:LinkButton>
        <br />
        <br />
        <asp:Button ID="btnregister" runat="server" Height="30px" Text="注 册" Width="108px" OnClick="btnregister_Click" BackColor="Red" Font-Size="Medium" />
        <br />
         
    
    </div>
    </form>
</body>
</html>
