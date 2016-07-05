<%@ Page Language="C#" AutoEventWireup="true" CodeFile="show.aspx.cs" Inherits="jianzhi_show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>信息显示</title>
    <style type="text/css">

       </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="yc_header" class="yc_header">
          <div id="yc_tnav">
            <div class="page clear_no">
                <div class="logo">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="56px" Width="151px" ImageUrl="../img/logo3.gif" BorderStyle="Outset" PostBackUrl="~/jianzhi/homePage.aspx" />
                </div>
                <ul class="tnav_wrap">
                    <li><a href="homePage.aspx" id="toIndex" data-selectid="index">首页</a></li>
                    <li><a href="position" id="toJob" data-selectid="job" target="_blank">职位</a></li>
                    <li><a href="CompusRecruitment.aspx" data-selectid="capaus" target="_blank">校园招聘</a></li>
                    <li><asp:LinkButton ID="LinkButtonPublic" runat="server" OnClick="LinkButtonPublic_Click">发布职位</asp:LinkButton></li>
                    <li><asp:LinkButton ID="LinkButtonStu" runat="server" OnClick="LinkButtonStu_Click">评价</asp:LinkButton></li>
                </ul>
               <asp:Panel ID="PanelLogin" runat="server" Visible="true">
                    <div class="btn">
                    <asp:LinkButton ID="LinkButtonLogin" Width="80px" runat="server" Font-Bold="False" Font-Size="18px" BackColor="#F8F8F8" OnClick="LinkButtonLogin_Click">登录</asp:LinkButton>
                    <asp:LinkButton ID="LinkButtonRegist" Width="80px" runat="server" Font-Bold="False" Font-Size="18px" BackColor="#F8F8F8" OnClick="LinkButtonRegist_Click">注册</asp:LinkButton>
                    </div>
                </asp:Panel>
                <asp:Panel ID="Panel" runat="server" Visible="false">
                    <div class="btn">
                    <asp:LinkButton ID="Link" Width="80px" runat="server" Font-Bold="False" Font-Size="18px" BackColor="#F8F8F8" OnClick="Link_Click"></asp:LinkButton>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>

        <div class="h2">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnapply" runat="server" BackColor="Fuchsia" Font-Size="X-Large" ForeColor="Black" OnClick="btnapply_Click" style="margin-left: 5px" Text="申请职位" Width="100px" />
            &nbsp;<asp:Button ID="btncollection" runat="server" BackColor="Fuchsia" Font-Size="X-Large" OnClick="btncollection_Click" Text="收 藏" Width="101px" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        <div class="h2">

            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            &nbsp; <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            &nbsp; <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server"></asp:Label>
            <br />

        </div>
        <div class="h4">&nbsp;</div>
        <div class="h2">福利待遇</div>
        <div class="h2">
            餐饮补贴&nbsp;绩效奖金&nbsp;五险一金&nbsp;带薪年假&nbsp;<br />
            <br />
            员工培训&nbsp;节日福利&nbsp;员工旅游
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </div>
        <div class="h4">&nbsp;</div>
        <div class="h2" aria-autocomplete="none">职位介绍</div>
        <p class="h3">
            
            <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
            
        </p>
        <div class="h4">&nbsp;</div>
        <div class="h2">职位要求</div>
        <p class="h3">
            &nbsp;<asp:Label ID="Label7" Font-Size="Medium" runat="server" Text="Label"></asp:Label>
        </p>
        <div class="h4">&nbsp;</div>
        <div class="h2">工作地点</div>
        <p class="h3">
            &nbsp;<asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
        </p>
        <div class="h4">&nbsp;</div>
        <div class="h2">公司介绍</div>
        <p class="h3">
            &nbsp;<asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
        </p>
        <div class="h4">&nbsp;</div>
    </form>
        
        </body>
</html>
