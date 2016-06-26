<%@ Page Language="C#" AutoEventWireup="true" CodeFile="findpsw.aspx.cs" Inherits="jianzhi_public" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>找回密码</title>
     <style type="text/css">
        body{
            
            background-image:url(../img/register.jpg);
            background-repeat:no-repeat;
            background-size:cover;
            overflow:hidden;
        }
         #form1 {
             height: 485px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; height: 70px;">

            <br />
            <br />

            <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="身份验证"></asp:Label>&nbsp;-------------&gt;<asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="重置密码"></asp:Label>&nbsp;-------------&gt;<asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="完成"></asp:Label>

        </div>
        <br />
        <br />
        <div style="height: 84px">
            
            <asp:Panel ID="Panel1" runat="server" style="text-align:center;">
                 &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="用户名："></asp:Label>
                 <asp:TextBox ID="txtname" runat="server" Font-Size="X-Large"></asp:TextBox>
                 <br />
                 <br />
                 &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="安全问题：" Font-Size="X-Large"></asp:Label>
                 <asp:DropDownList ID="ddlproblem" runat="server" Font-Size="X-Large" Width="277px" Height="32px">
                     <asp:ListItem>你的学号？</asp:ListItem>
                     <asp:ListItem>你的专业？</asp:ListItem>
                     <asp:ListItem>你的生日？</asp:ListItem>
                     <asp:ListItem>你的家庭住址？</asp:ListItem>
                     <asp:ListItem>你的真实姓名？</asp:ListItem>
                     <asp:ListItem></asp:ListItem>
                 </asp:DropDownList>
                 <br />
                 <br />
                 <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="安全答案："></asp:Label>
                 <asp:TextBox ID="txtanswer" runat="server" Font-Size="X-Large"></asp:TextBox>
                 <br />
                 <br />
                 <br />
                 <asp:Button ID="btnnext1" runat="server" Text="下一步" Font-Size="X-Large" OnClick="Button1_Click" BackColor="#9999FF" />
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" style="text-align:center;">
                &nbsp;
                <asp:Label ID="lbpsw" runat="server" Text="密码：" Font-Size="X-Large"></asp:Label>
                <asp:TextBox ID="txtpsw" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbrepsw" runat="server" Text="确认密码：" Font-Size="X-Large"></asp:Label>
                <asp:TextBox ID="txtrepsw" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                
                <asp:CompareValidator ID="cvpsw" runat="server" ControlToCompare="txtpsw" ControlToValidate="txtrepsw" ErrorMessage="密码与确认密码不一致！" SetFocusOnError="true" Font-Size="Medium"></asp:CompareValidator>
                
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="验证码："></asp:Label>
                <asp:TextBox ID="txtiden" runat="server" Font-Size="X-Large"></asp:TextBox>
                
                <asp:ImageButton ID="yzm" runat="server" ImageUrl="imagecode.aspx"/>
                <asp:LinkButton ID="ChangeCode" runat="server" Font-Size="Large" OnClick="ChangeCode_Click1">看不清楚?换一个</asp:LinkButton>
                
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnnext2" runat="server" Font-Size="X-Large" Text="下一步" OnClick="Button2_Click" BackColor="#9999FF" />
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </asp:Panel>
             <br />
            <br />
            <asp:Panel ID="Panel3" runat="server" style="text-align:center;" Font-Size="Larger">
                <asp:Label ID="Label3" runat="server" Text="密码重置成功！" Font-Size="Larger"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Larger" OnClick="LinkButton1_Click">现在重新登录？</asp:LinkButton>
                </asp:Panel>
        </div>
    </form>
</body>
</html>
