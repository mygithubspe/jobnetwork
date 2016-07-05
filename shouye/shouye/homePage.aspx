<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homePage.aspx.cs" Inherits="shouye" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css"/> 
    <script type="text/javascript" src="babyzone.js"></script>
    <style type="text/css">
        #banner {position:relative; height:260px; overflow:hidden;}
        #banner_list{width:616px;height:260px;overflow:hidden;position:relative;}
        #banner_list img {border:0px;}
        #banner_info{position:absolute; bottom:0; left:5px; line-height:30px;color:#fff;z-index:1001}
        #banner_text {position:absolute;width:120px;z-index:1002; right:3px; bottom:3px;}
        #banner ul {position:absolute;list-style-type:none;filter: Alpha(Opacity=75);opacity:0.75; border:1px solid #fff;z-index:1002;margin:0; padding:0; bottom:3px; right:5px;}
        #banner ul li { padding:0px 8px;float:left;display:block;color:#FFF;border:#fff 1px solid;background-color:#6f4f67;cursor:pointer}
        #banner ul li.on{ background-color:#900}
        #banner_list a{position:absolute;}
    </style>
    <script type="text/javascript">
       window.onload = function () {
           babyzone.scroll(4, "banner_list", "list", "banner_info");
       }      
</script>
</head>
<body>
    <form id="form1" runat="server">
      <div id="yc_header" class="yc_header">
          <div id="yc_tnav">
            <div class="page clear_no">
                <div class="logo">
                    <a href="#" data-selectid="index" onclick="clickLog('from=chr_top_logo');">校园兼职网</a>
                    <span class="loc f16" data-val="21,235" onclick="clickLog('from=chr_top_city');">[<em>烟台</em>]</span>
                </div>
                <ul class="tnav_wrap">
                    <li><a href="homePage.aspx" id="toIndex" data-selectid="index">首页</a></li>
                    <li><a href="position.aspx" id="toJob" data-selectid="job" target="_blank">职位</a></li>
                    <li><a href="CompusRecruitment" data-selectid="capaus" target="_blank">校园招聘</a></li>
                    <li><asp:LinkButton ID="LinkButtonPublic" runat="server" OnClick="LinkButtonPublic_Click">发布职位</asp:LinkButton></li>                   
                    <li><a href="#" onclick="clickLog('');" data-selectid="freejob">学生投诉</a></li>                   
                </ul>
                <asp:Panel ID="PanelLogin" runat="server" Visible="true">
                    <div class="btn">
                    <asp:LinkButton ID="LinkButtonLogin" Width="80px" runat="server" Font-Bold="False" Font-Size="18px" OnClick="LinkButtonLogin_Click">登录</asp:LinkButton>
                    <asp:LinkButton ID="LinkButtonRegist" Width="80px" runat="server" Font-Bold="False" Font-Size="18px" OnClick="LinkButtonRegist_Click">注册</asp:LinkButton>
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
        <div class="main" style="height:510px;">
          <div class="sideBar" >				
                              <div class="sideTab">
                                  <asp:LinkButton ID="lbZhi" runat="server" Font-Size="Large" Height="43px" OnClick="lbZhi_Click" Width="117px" BackColor="White">按职类</asp:LinkButton>
                                  <asp:LinkButton ID="lbHang" runat="server" Height="43px" OnClick="lbHang_Click" Width="117px" BackColor="#F8F8F8">按行业</asp:LinkButton>
                              </div>
                                     <asp:Panel ID="panZhi" runat="server" Visible="True">
                        <div>
					      <div class="sideBox sideMen" style="background:#ffffff;border-bottom:1px solid #eee;">
						<p class="tit"><a href="http://www.chinahr.com/yantai/jobs/41767/" target="_blank">销售</a></p>
											<a href="http://www.chinahr.com/yantai/jobs/41951/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat1');">网络/在线销售</a>
											<a href="http://www.chinahr.com/yantai/jobs/41840/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat1');">销售代表</a>
											<a href="http://www.chinahr.com/yantai/jobs/27577/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat1');">客户经理</a>
											<a href="http://www.chinahr.com/yantai/jobs/27594/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat1');">客户代表</a>
											<a href="http://www.chinahr.com/yantai/jobs/17292/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat1');">电话销售</a>
															<i class="index-icon"></i>						 
				</div> 
				          <div class="sideBox sideMen" style="background:#ffffff;border-bottom:1px solid #eee;">
						<p class="tit"><a href="http://www.chinahr.com/yantai/jobs/57587/" target="_blank" onClick="clickLog('from=chr_bcity_postcat3');">行政/客服</a></p>
											<a href="http://www.chinahr.com/yantai/jobs/32300/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat3');">前台</a>
											<a href="http://www.chinahr.com/yantai/jobs/50110/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat3');">文员</a>
											<a href="http://www.chinahr.com/yantai/jobs/42781/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat3');">在线客服</a>
											<a href="http://www.chinahr.com/yantai/jobs/27431/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat3');">售前技术支持</a>
											<a href="http://www.chinahr.com/yantai/jobs/57445/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat3');">售后技术支持</a>
															<i class="index-icon"></i>						 						 
				</div>
				          <div class="sideBox sideMen" style="background:#ffffff;border-bottom:1px solid #eee;">						 
						<p class="tit"><a href="http://www.chinahr.com/yantai/jobs/57523/" target="_blank" onClick="clickLog('from=chr_bcity_postcat4');">公关/媒介/市场</a></p>
															<a href="http://www.chinahr.com/yantai/jobs/21845/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat4');">促销员</a>
											<a href="http://www.chinahr.com/yantai/jobs/28979/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat4');">网站推广</a>
											<a href="http://www.chinahr.com/yantai/jobs/35697/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat4');">市场营销</a>
											<a href="http://www.chinahr.com/yantai/jobs/57150/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat4');">业务拓展</a>
											<a href="http://www.chinahr.com/yantai/jobs/24190/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat4');">活动策划</a>
															<i class="index-icon"></i>
				</div>
				          <div class="sideBox sideMen" style="background:#ffffff;border-bottom:1px solid #eee;">	 
						<p class="tit"><a href="http://www.chinahr.com/yantai/jobs/57588/" target="_blank" onClick="clickLog('from=chr_bcity_postcat5');">技术/产品/设计</a></p>
															<a href="http://www.chinahr.com/yantai/jobs/33003/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat5');">软件开发</a>
											<a href="http://www.chinahr.com/yantai/jobs/37641/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat5');">通信工程师</a>
											<a href="http://www.chinahr.com/yantai/jobs/15218/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat5');">后端开发工程师</a>
											<a href="http://www.chinahr.com/yantai/jobs/57538/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat5');">前端开发工程师</a>
											<a href="http://www.chinahr.com/yantai/jobs/50101/" target="_blank"  onClick="clickLog('from=chr_bcity_postcat5');">设计</a>
															<i class="index-icon"></i>						 
				</div>
							 
				          <div class="sideTit" style="background:#ffffff;border-bottom:1px solid #eee;">
					<p class="tit"><a href="http://www.chinahr.com/yantai/jobs/" target="_blank" onClick="clickLog('from=chr_bcity_meau_allpost');">全部职位类别</a></p>
				</div>
			    </div>
                </asp:Panel>              
                                <asp:Panel ID="panHang" runat="server" visible="False">  
                                    <div class="sideNav sideIndru">
				            <!-- 首页左侧行业 begin -->								 
								            <div class="sideBox sideMen">
					 
							            <p class="tit"><a href="http://www.chinahr.com/yantai/jobs/57553/" target="_blank" onClick="clickLog('from=chr_bcity_inducat3');">互联网/通信/电子</a></p>
																            <a href="http://www.chinahr.com/yantai/jobs/32952/" target="_blank" onClick="clickLog('from=chr_bcity_inducat3');">软件工程师</a>
												            <a href="http://www.chinahr.com/yantai/jobs/12640/" target="_blank" onClick="clickLog('from=chr_bcity_inducat3');">UI设计</a>
												            <a href="http://www.chinahr.com/yantai/jobs/15218/" target="_blank" onClick="clickLog('from=chr_bcity_inducat3');">产品经理</a>
																            <i class="index-icon"></i>
 
 
					            </div>
								            <div class="sideBox sideMen">
						 
							            <p class="tit"><a href="http://www.chinahr.com/yantai/jobs/57551/" target="_blank" onClick="clickLog('from=chr_bcity_inducat5');">广告/媒体/策划</a></p>
																            <a href="http://www.chinahr.com/yantai/jobs/22271/" target="_blank" onClick="clickLog('from=chr_bcity_inducat5');">广告创意</a>
												            <a href="http://www.chinahr.com/yantai/jobs/30789/" target="_blank" onClick="clickLog('from=chr_bcity_inducat5');">平面设计</a>
												            <a href="http://www.chinahr.com/yantai/jobs/50329/" target="_blank" onClick="clickLog('from=chr_bcity_inducat5');">Flash</a>
																            <i class="index-icon"></i>
 				 
					            </div>
								            <div class="sideBox sideMen">
							            <p class="tit"><a href="http://www.chinahr.com/yantai/jobs/57544/" target="_blank" onClick="clickLog('from=chr_bcity_inducat6');">教育/翻译/咨询</a></p>
																            <a href="http://www.chinahr.com/yantai/jobs/18880/" target="_blank" onClick="clickLog('from=chr_bcity_inducat6');">小学教师</a>
												            <a href="http://www.chinahr.com/yantai/jobs/28781/" target="_blank" onClick="clickLog('from=chr_bcity_inducat6');">培训助理</a>
												            <a href="http://www.chinahr.com/yantai/jobs/18943/" target="_blank" onClick="clickLog('from=chr_bcity_inducat6');">翻译</a>
																            <i class="index-icon"></i>
 
						 
					            </div>
				 
								            <div class="sideBox sideMen">
						 
							            <p class="tit"><a href="http://www.chinahr.com/yantai/jobs/57548/" target="_blank" onClick="clickLog('from=chr_bcity_inducat8');">服务业</a></p>
																            <a href="http://www.chinahr.com/yantai/jobs/18131/" target="_blank" onClick="clickLog('from=chr_bcity_inducat8');">餐饮</a>
												            <a href="http://www.chinahr.com/yantai/jobs/28747/" target="_blank" onClick="clickLog('from=chr_bcity_inducat8');">收银员</a>
												            <a href="http://www.chinahr.com/yantai/jobs/30510/" target="_blank" onClick="clickLog('from=chr_bcity_inducat8');">促销员</a>
																            <i class="index-icon"></i>
				 
						 
					            </div>
										            <div class="sideTit">
						            <p class="tit"><a href="http://www.chinahr.com/yantai/jobs/" target="_blank" onClick="clickLog('from=chr_bcity_meau_allindu');">全部行业类别</a></p>
					            </div>
                                        </div>
                                </asp:Panel>
                </div>
       
       <div class="column">
				<div style="text-align:center;">
                    <asp:TextBox ID="txtSearch" runat="server" Height="34px" Width="631px" BorderColor="#ff0000" BorderStyle="Solid"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="搜  索" Width="125px" BackColor="#ff0000" BorderColor="#ff0000" BorderStyle="Solid" BorderWidth="5px" Height="38px" Font-Size="18px" ForeColor="White" OnClick="Button1_Click" />                     
				</div>
           <br/>			
        <div id="banner">	
	    <a href="#" id="banner_info"></a> 
        <ul id="list">
        </ul>
       <div id="banner_list">
            <a href="#" target="_blank"><img src="http://imgs.chinahr.com/ads/201605/1463715607385zx3wz3.jpg"/></a>
            <a href="#" target="_blank"><img  src="http://imgs.chinahr.com/ads/201605/1462426676489n3iaxt.jpg" /></a>
            <a href="#" target="_blank"><img src="http://imgs.chinahr.com/ads/201605/1463573410006bwrm2a.jpg" /></a>
            <a href="#" target="_blank"><img src="http://imgs.chinahr.com/ads/201603/1459398731008jsfvk2.jpg"/></a>
	    </div>
    </div>
           <br/>
				
				<div class="hotEnprise">
                 <table style="width: 100%;">
            <tr>
                <td>
                    <div style="border:1px solid;width:350px;">
                    <div style="font-size:18px"> 最新兼职信息
                        <a href="#" style="float:right">more>>&nbsp</a>
        </div>
        <div>
            <asp:GridView ID="gvJianzhi" runat="server" AutoGenerateColumns="False" GridLines="None" ShowHeader="False" Font-Overline="False" CssClass="f16" Font-Italic="False" Width="325px">
                            <Columns>
                               <asp:HyperLinkField DataNavigateUrlFields="position_id" DataTextField="position" DataTextFormatString="&gt;&gt;{0}">
                                 
                                <ItemStyle HorizontalAlign="Left" Height="27px" />
                                </asp:HyperLinkField>
                                 
                                <asp:BoundField DataField="time" DataFormatString="{0:m}" >
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        </div>
                        </div>
                </td> 
                <td>
                    <div style="border:1px solid;width:350px;">
                    <div style="font-size:18px">				
					最新违规信息
                    <a href="#" style="float:right">more>>&nbsp</a>
                    </div>
                    <div>
                        <asp:GridView ID="gvDefraud" runat="server" AutoGenerateColumns="False" GridLines="None" ShowHeader="False" Font-Overline="False" CssClass="f16" Font-Italic="False" Width="325px">
                            <Columns>
                               <asp:HyperLinkField DataNavigateUrlFields="defraud_id" DataTextField="defraud" DataTextFormatString="&gt;&gt;{0}">
                                 
                                <ItemStyle HorizontalAlign="Left" Height="27px" />
                                </asp:HyperLinkField>
                                 
                                <asp:BoundField DataField="time" DataFormatString="{0:m}" >
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        
                        </div>
                    </div>
                </td>
                
            </tr>
            
        </table>	 
			</div>
           </div>  
			<!-- column end -->          
   </div>
   <div id="footer">copyright © 2004-2012 《ASP.NET 4.5(c#) 实用教程》版权所有.</div>
    </form>
</body>
</html>
