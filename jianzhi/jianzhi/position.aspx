<%@ Page Language="C#" AutoEventWireup="true" CodeFile="position.aspx.cs" Inherits="zhiwei" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css"/>
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
                    <li><a href="position.aspx" id="toJob" data-selectid="job" target="_blank">职位</a></li>
                    <li><a href="CompusRecruitment.aspx" data-selectid="capaus" target="_blank">校园招聘</a></li>
                    <li><asp:LinkButton ID="LinkButtonPublic" runat="server" OnClick="LinkButtonPublic_Click">发布职位</asp:LinkButton></li>
                    <li><asp:LinkButton ID="LinkButtonStu" runat="server" OnClick="LinkButtonStu_Click">评价</asp:LinkButton></li>
                </ul>
                <asp:Panel ID="PanelLogin" runat="server" Visible="true">
                <div class="btn">
                <asp:LinkButton ID="lbLogin" Width="80px" runat="server" Font-Bold="False" Font-Size="18px" OnClick="lbLogin_Click">登录</asp:LinkButton>
                <asp:LinkButton ID="lbRegister" Width="80px" runat="server" Font-Bold="False" Font-Size="18px" OnClick="lbRegister_Click">注册</asp:LinkButton>
                </div>
                </asp:Panel>
                 <asp:Panel ID="Panel" runat="server" Visible="false">
                    <div class="btn">
                    <asp:LinkButton ID="Link" Width="80px" runat="server" Font-Bold="False" Font-Size="18px" BackColor="#F8F8F8" OnClick="Link_Click"></asp:LinkButton>                   
                    <asp:LinkButton ID="LinkButton4" Width="80px" runat="server" Font-Bold="False" Font-Size="18px" OnClick="LinkButton4_Click" >切换账号</asp:LinkButton>
                    </div>
                </asp:Panel>

            </div>
        </div>
    </div>
        <div class="main">
			<div style="text-align:center;">					
                <asp:TextBox ID="txtSearch" runat="server" Height="34px" Width="700px" BorderColor="#ff0000" BorderStyle="Solid"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="搜  索" Width="125px" BackColor="#ff0000" BorderColor="#ff0000" BorderStyle="Solid" BorderWidth="5px" Height="38px" Font-Size="18px" ForeColor="White" OnClick="Button1_Click"/>
			</div> 
            <br/>
            <section id="selection">
                <br />
			<div class="select-type" data-type="industry">
				<div class="select-title">职位</div>
								<a data-val="0" href="#" rel="nofollow"><div class="select-all on">全部</div></a>
								<div class="select-cont">
		                           <dl class="select-l1">
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">软件工程师</asp:LinkButton>
                                        <a data-val="1001" href="#" rel="nofollow"><dt>平面设计</dt></a>
									    <a data-val="1002" href="#" rel="nofollow"><dt>Flash</dt></a>
									    <a data-val="1003" href="#" rel="nofollow"><dt>小学教师</dt></a>
									    <a data-val="1004" href="#" rel="nofollow"><dt>中学教师</dt></a>
									    <a data-val="1005" href="#" rel="nofollow"><dt>翻译</dt></a>
									    <a data-val="1006" href="#" rel="nofollow"><dt>房地产</dt></a>
									    <a data-val="1007" href="#" rel="nofollow"><dt>收银员</dt></a>
									    <a data-val="1008" href="#" rel="nofollow"><dt>服务员</dt></a>
									    <a data-val="1009" href="#" rel="nofollow"><dt>促销员</dt></a>												
					</dl>										
				</div>
			</div>	          
                <br />
                <br />  					
			<div class="select-type" data-type="companyType">
				<div class="select-title">公司性质</div>
								<a href="#" class="on" rel="nofollow"><div class="select-all on" rel="nofollow">全部</div></a>
								<div class="select-cont">
					<dl class="select-l1">
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">上市公司</asp:LinkButton>
						<a href="#" data-val="1" rel="nofollow"><dt>外商独资</dt></a>
						<a href="#" data-val="2" rel="nofollow"><dt>合资</dt></a>
						<a href="#" data-val="4" rel="nofollow"><dt>国企</dt></a>																		
						<a href="#" data-val="6" rel="nofollow"><dt>事业单位</dt></a>
						<a href="#" data-val="7" rel="nofollow"><dt>民营/私企</dt></a>																		
						<a href="#" data-val="10" rel="nofollow"><dt>股份制</dt></a>
						<a href="#" data-val="99" rel="nofollow"><dt>其他</dt></a>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</dl>
				</div>
			</div>
                <br />
			<div class="select-type" data-type="salary">               
				<div class="select-title">月薪</div>
								<a href="#" data-val="0" class="on" rel="nofollow"><div class="select-all on">全部</div></a>
								<div class="select-cont s">
					     <dl class="select-l1">
												<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">1000以下</asp:LinkButton>
										        <a href="#" data-val="2,3" rel="nofollow"><dt>1000-2000</dt></a>
										        <a href="#" data-val="4" rel="nofollow"><dt>2000-3000</dt></a>
										        <a href="#" data-val="5" rel="nofollow"><dt>3000-4000</dt></a>
										        <a href="#" data-val="6" rel="nofollow"><dt>4000-5000</dt></a>
										        <a href="#" data-val="7" rel="nofollow"><dt>5000以上</dt></a>
											</dl>
				</div>
			</div>
			<div class="clear"></div>
		</section>  
            <br />
            <br /> 
         <div style="background:#ffffff;">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" PageSize="6" ShowHeader="False" Width="100%" Font-Size="20px">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="pos_id" DataTextField="pos_name" HeaderText="职位" DataNavigateUrlFormatString="show.aspx?id={0}">
                <ItemStyle HorizontalAlign="Center" Height="50px" />
                </asp:HyperLinkField>               
                <asp:BoundField DataField="salary" HeaderText="工资">
                <ItemStyle HorizontalAlign="Center" Height="15px" />
                </asp:BoundField>
                <asp:BoundField DataField="com_name" HeaderText="公司">
                <ItemStyle HorizontalAlign="Center" Height="15px" />
                </asp:BoundField>
                 <asp:BoundField DataField="time" HeaderText="发布日期" DataFormatString="{0:m}">
                <ItemStyle HorizontalAlign="Center" Height="15px" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <br />
             <div style="text-align:center">
                当前页码:[<asp:Label ID="LabelPage" runat="server" Text="1"></asp:Label>]&nbsp;
                总页码：[<asp:Label ID="LabelTotalPage" runat="server" Text=""></asp:Label>]
                <asp:LinkButton ID="LinkButtonFirst" runat="server" OnClick="LinkButtonFirst_Click">首页</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonPrev" runat="server" OnClick="LinkButtonPrev_Click">上一页</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonNext" runat="server" OnClick="LinkButtonNext_Click">下一页</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonLast" runat="server" OnClick="LinkButtonLast_Click">末页</asp:LinkButton>
            </div>
          </div>             
        </div>
        <div id="footer">copyright © 2004-2012 《ASP.NET 4.5(c#) 实用教程》版权所有.</div>
    </form>
</body>
</html>
