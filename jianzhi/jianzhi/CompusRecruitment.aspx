<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompusRecruitment.aspx.cs" Inherits="CompusRecruitment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="reset1.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div id="yc_header" class="yc_header">
          <div id="yc_tnav">
            <div class="page clear_no">
                <div class="logo">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="56px" Width="151px" ImageUrl="../img/logo3.gif" BorderStyle="Outset" PostBackUrl="~/jianzhi/homePage.aspx" />
&nbsp;
                    </div>
                <ul class="tnav_wrap">
                    <li><a href="CompusRecruitment.aspx" id="toIndex" data-selectid="index">&nbsp;首页</a></li>
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
                    <asp:LinkButton ID="Link" Width="80px" runat="server" Font-Bold="False" Font-Size="18px" BackColor="#F8F8F8" OnClick="Link_Click1"></asp:LinkButton>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
      <br />
        <br />
        <table style="width: 100%; text-align:center; background-color:white">
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
        <div style="background-color:#f8f8f8">
            <br />
            <br />
            <table style="width: 100%; background-color:white">
                <tr>
                    <td>&nbsp;</td>
                    <td style="text-align:center">
                        <asp:Image ID="Image1" runat="server"  ImageUrl="~/img/goodCompany.png" Height="68px" Width="279px"/>
                        <br />
                      <br />
                        
                        
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <table style="width: 100%; text-align:center">
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td style="width:290px;">
                                    <a  href="http://career.cmbchina.com/Campus/bulletindetail.aspx?id=2562">
                                    
                                       <asp:Image ID="ImgZhaoshang" runat="server" ImageUrl="~/img/zhaoshangbank.jpg" Height="50px" Width="106px" BorderColor="Black" BorderStyle="Solid"/>
                                    </a>
                                   <h3> 无锡招行，无限希望 
                                       </h3>
                                    <h3> 实习生火热招聘中</h3> 
                                    <br />
                                        
                                </td>
                                <td style="width:290px;">
                                  
                                    <a href="http://www.51code.com/htm/android7/chinahrxiaoyuanpp.htm">
                                
                                    <asp:Image ID="Img51code" runat="server" ImageUrl="~/img/51code.jpg" Height="50px" Width="106px" BorderColor="#33CCFF" BorderStyle="Solid"/>
                                  </a>
                                    <h3>
                                        招大专本科生
                                    </h3>
                                    <br />
                                
                                </td>
                                <td style="width:290px">
                                  
                                    <a href="http://jumei.ihrscloud.com/outterSupport/campusHire">
                                
                                    <asp:Image ID="ImgJumei" runat="server" ImageUrl="~/img/jumei.jpg" Height="50px" Width="106px" BorderColor="#33CCFF" BorderStyle="Solid"/>
                                  </a>
                                     <h3>
                                         新聚美，梦无界</h3>
                                    <h3>
                                        启新程，创未来
                                    </h3>
                                    <br />
                                    </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                  
                                    <a href="http://hr.sohu.com/">
                                
                                    <asp:Image ID="ImgSouhu" runat="server" ImageUrl="~/img/souhu.jpg" Height="50px" Width="106px" BorderColor="#66CCFF" BorderStyle="Solid"/>
                                  </a>
                                    <h3>
                                      年轻向上的力量
                                    </h3>
                                    <br />
                                    </td>
                                <td>
                                  
                                    <a href="http://campus.chinahr.com/2016/galanz/index.asp?prj=promo&ADPara=2252,209987,71,1">
                                
                                    <asp:Image ID="ImgGelanshi" runat="server" ImageUrl="~/img/gelanshi.jpg" Height="50px" Width="106px" BorderColor="#66CCFF" BorderStyle="Solid"/>
                                  </a>
                                     <h3>
                                      学而优则仕
                                    </h3>
                                    <br />
                                    </td>
                                <td>
                                  
                                    <a href="http://www.51testing.net/htm/zpwc/chinahrxiaoyuanpp.htm">
                                
                                    <asp:Image ID="Img51testing" runat="server" ImageUrl="~/img/51testing.jpg" Height="50px" Width="106px" BorderColor="#66CCFF" BorderStyle="Solid"/>
                                  </a>
                                    <h3>
                                      急招应往届毕业生
                                    </h3>
                                    <br />
                                    </td>
                                <td>
                                    &nbsp;
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                   <a href="http://join.qq.com/index.php">
                                       <asp:Image ID="ImgQq" runat="server" ImageUrl="~/img/qq.jpg" Height="50px" Width="106px" BorderColor="#66CCFF" BorderStyle="Solid"/>
                                   </a>
                                    <h3>
                                        一切以用户价值为依归
                                    </h3>
                                   <br />
                                </td>
                                <td>
                                   <a href="https://campus.alibaba.com/index.htm">
                                       <asp:Image ID="ImgAlibab" runat="server" ImageUrl="~/img/alibaba.jpg" Height="50px" Width="106px" BorderColor="#66CCFF" BorderStyle="Solid"/>
                                   </a>
                                    <h3>
                                        让天下没有难做的生意
                                    </h3>
                                    <br />
                                    </td>
                                <td>
                                  
                                     <a href=" http://campus.chinahr.com/job/102893.html">
                                       <asp:Image ID="ImgAqiyi" runat="server" ImageUrl="~/img/aiqiyi.jpg" Height="50px" Width="106px" BorderColor="#66CCFF" BorderStyle="Solid"/>
                                   </a>
                                    <h3>
                                       让人们平等便捷获得</h3>
                                     <h3>
                                         更多更好视频
                                    </h3>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>

                             
                        </table>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                
            </table>



        </div>
       
    </form>
</body>
</html>
