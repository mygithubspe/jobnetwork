<%@ Page Language="C#" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="reset1.css" rel="stylesheet" type="text/css" />
    <title>搜索结果</title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
      <div>
     <div id="yc_header" class="yc_header">
          <div id="yc_tnav">
            <div class="page clear_no">
                <div class="logo">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="56px" Width="151px" ImageUrl="../img/logo3.gif" BorderStyle="Outset" PostBackUrl="~/jianzhi/homePage.aspx" />
&nbsp;
                    </div>
                <ul class="tnav_wrap">
                    <li><a href="CompusRecruitment.aspx" id="toIndex" data-selectid="index">首页</a></li>
                    <li><a href="findjjob.aspx" id="toJob" data-selectid="job" target="_blank">找兼职</a></li>
                    <li><a href="findqjob.aspx" data-selectid="capaus" target="_blank">找全职</a></li>
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
      <br />
        <br />
        <table style="width: 100%; text-align:center">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TxtSearch" runat="server" Height="34px" Width="507px" BorderColor="#24DF78" BorderStyle="Solid"></asp:TextBox><asp:Button ID="btnSearch" runat="server" Text="搜索" Width="109px" BackColor="#24DF78" BorderColor="#24DF78" BorderStyle="Solid" BorderWidth="5px" Height="38px" OnClick="btnSearch_Click" /> 
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            
        </table>
      
    </div>
     <div style="width:100% ;background-color:#f8f8f8;">
        <br />
        <br />

        <table style="width: 100%; background-color:white">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                
                <td> <table style="width: 100%; font-size: small; text-align:center">
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>工作地点</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp<asp:LinkButton ID="Lbtall1" runat="server" Width="33px" Font-Size="Small" ForeColor="#666666" OnClick="Lbtall1_Click">全部</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="lbtbeijing" runat="server" Width="32px" Font-Size="Small" ForeColor="#666666" OnClick="lbtbeijing_Click" CommandName="Select">北京</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtnshanghai" runat="server"  Font-Size="Small" ForeColor="#666666" Width="31px">上海</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtguangzhou" runat="server" Width="28px" Font-Size="Small" ForeColor="#666666">广州</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtndalian" runat="server" Width="27px" Font-Size="Small" ForeColor="#666666">大连</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtshenyang" runat="server"  Width="32px" ForeColor="#666666">沈阳</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtshenzhen" runat="server"  Width="32px" ForeColor="#666666">深圳</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtsuzhou" runat="server"  Width="32px" ForeColor="#666666">苏州</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtnanjing" runat="server" Width="32px" ForeColor="#666666">南京</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtshijiazhuang" runat="server" Width="43px" ForeColor="#666666">石家庄</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtwuhan" runat="server" Width="32px" ForeColor="#666666">武汉</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtxian" runat="server"  Width="32px" ForeColor="#666666">西安</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtchongqing" runat="server"  Width="32px" ForeColor="#666666">重庆</asp:LinkButton>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <strong>相关行业</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="Lbtall2" runat="server" Width="33px" Font-Size="Small" ForeColor="#666666" OnClick="Lbtall2_Click">全部</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="Lbtjisuanji" runat="server" Width="40px" Font-Size="Small" ForeColor="#666666" OnClick="Lbtjisuanji_Click">计算机</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="Lbtkuaiji" runat="server" Width="33px" Font-Size="Small" ForeColor="#666666" >会计</asp:LinkButton>&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="Lbtmaoyi" runat="server" Width="33px" Font-Size="Small" ForeColor="#666666">贸易</asp:LinkButton>&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="Lbtzhiyao" runat="server" Width="33px" Font-Size="Small" ForeColor="#666666">制药</asp:LinkButton>&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="Lbtguanggao" runat="server" Width="33px" Font-Size="Small" ForeColor="#666666">广告</asp:LinkButton>&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="Lbfangdichang" runat="server" Width="46px" Font-Size="Small" ForeColor="#666666">房地产</asp:LinkButton>&nbsp;&nbsp;&nbsp; 
                                <asp:LinkButton ID="Lbtfuwuye" runat="server" Width="49px" Font-Size="Small" ForeColor="#666666">服务业</asp:LinkButton>&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtjiaoyu" runat="server"  Width="32px" ForeColor="#666666">教育</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtwuliu" runat="server"  Width="32px" ForeColor="#666666">物流</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtpeixun" runat="server"  Width="32px" ForeColor="#666666">培训</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtzhengfu" runat="server"  Width="32px" ForeColor="#666666">政府</asp:LinkButton>
                            </td>
                        </tr>
                        
                    </table>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <div style="background-color:#f8f8f8">
        <div style="background-color:white;width:100%">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 职位 <br />
        </strong>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" Height="121px"  PageSize="6" ShowHeader="False" Width="810px"  Font-Size="Large" HorizontalAlign="center">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="pos_id" DataNavigateUrlFormatString="show.aspx?id={0}" DataTextField="pos_name" DataTextFormatString="{0}" HeaderText="pos_name">
                    <ItemStyle Font-Overline="false" HorizontalAlign="right"  width="1500px" />
                    </asp:HyperLinkField>
                    <asp:BoundField DataField="com_name" HeaderText="com_name" >
                    <ItemStyle HorizontalAlign="right" width="250px" />
                       </asp:BoundField>
                    <asp:BoundField DataField="property" HeaderText="property" >
                    <ItemStyle HorizontalAlign="right" width="250px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="time" DataFormatString="{0:m}" HeaderText="time" >
                    <ItemStyle HorizontalAlign="right" width="250px" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当前页码为：[<asp:Label ID="LabelPage" runat="server" Text="1"></asp:Label>
                            ]&nbsp;总页码为：[<asp:Label ID="LabelTotalPage" runat="server" Text=""></asp:Label>
                            ]
                            <asp:LinkButton ID="LinkButtonFirst" runat="server" OnClick="LinkButtonFirst_Click" Width="78px">首页</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButtonPrev" runat="server" OnClick="LinkButtonPrev_Click" Width="93px">上一页</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButtonNext" runat="server" OnClick="LinkButtonNext_Click" Width="102px">下一页</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButtonLast" runat="server" OnClick="LinkButtonLast_Click" Width="87px">末页</asp:LinkButton>
            </span>
        </div>
        



    </div>
    </form>
</body>
</html>
