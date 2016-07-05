<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>兼职</title>
</head>
<body style="background-image:url(../img/u.jpg);background-repeat:no-repeat;background-size:cover;overflow :hidden">
    <form id="form1" runat="server">
    <div style="width:100%; text-align:center; height:100%;">
 
     
        <table style="width: 100%; height: 530px;" border="0" >
           
            <tr>
                <td style="text-align:center">&nbsp;</td>
                <td style="text-align:center">

                &nbsp;&nbsp; 登录<br />
                    <br />
                    用户名：<asp:TextBox ID="txtName" runat="server" Font-Size="Medium"></asp:TextBox>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;密码：<asp:TextBox ID="txtPass" runat="server" Font-Size="Medium" MaxLength="20" TextMode="Password" Width="199px"></asp:TextBox>
&nbsp;<br />
&nbsp;&nbsp;&nbsp; &nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="普通用户" Checked="True" GroupName="group" />
&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="企业用户" GroupName="group" />
                    &nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnlogin" runat="server" Font-Size="Large" ForeColor="Black" Text="登录" OnClick="btnlogin_Click"/>

                    <br />
                    <asp:Label ID="Lable1" runat="server" ForeColor="Red"></asp:Label>

                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="Linkregister" runat="server" PostBackUrl="register.aspx">我还没注册！</asp:LinkButton>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="Linkpass" runat="server" PostBackUrl="findpsw.aspx">忘记密码？</asp:LinkButton>

                    <br />
                    <br />

                </td>
                <td>&nbsp;</td>
            </tr>
            
        </table>
 
     
     </div>

 
    </form>
</body>
</html>
