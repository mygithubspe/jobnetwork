<%@ Page Language="C#" AutoEventWireup="true" CodeFile="show.aspx.cs" Inherits="jianzhi_show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>信息显示</title>
    <style type="text/css">

        .h4{width: 939px;height: 32px; border-bottom:2px dashed #e9e9e9;margin:0 auto;text-align: center;}
        .h2{width: 939px;margin:0 auto;margin-top: 20px;color: #666666;font-size: 16px;font-weight:bold;}
        .h3{width: 939px;margin:0 auto;margin-top: 20px;color: #666666;line-height: 28px;}
        .h1{width: 939px;margin:0 auto;margin-top: 23px;color: #777777;font-size: 18px;font-weight:bold;text-align: center;}
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="h2">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnapply" runat="server" BackColor="Fuchsia" Font-Size="Large" ForeColor="Black" OnClick="btnapply_Click" style="margin-left: 5px" Text="申请职位" Width="100px" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            &nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            &nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncollection" runat="server" BackColor="Fuchsia" Font-Size="Large" OnClick="btncollection_Click" Text="收 藏" Width="101px" />
        </div>

        <div class="h2">
            餐饮补贴&nbsp;绩效奖金&nbsp;五险一金&nbsp;带薪年假&nbsp;<br />
            <br />
            员工培训&nbsp;节日福利&nbsp;员工旅游
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </div>
        <div class="h4">&nbsp;</div>
        <div class="h2">职位介绍</div>
        <p class="h3">
            
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            
        </p>
        <div class="h4">&nbsp;</div>
        <div class="h2">职位要求</div>
        <p class="h3">
            &nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        </p>
        <div class="h4">&nbsp;</div>
        <div class="h2">工作地点</div>
        <p class="h3">
            &nbsp;<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </p>

    </form>
        <div class="h4">&nbsp;</div>
        </body>
</html>
