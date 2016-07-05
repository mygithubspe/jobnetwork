<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal_center.aspx.cs" Inherits="personal_center" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 219px;
        }
        .auto-style2 {
            height: 219px;
            width: 302px;
        }
        .auto-style3 {
            width: 302px;
        }
        .auto-style4 {
            color: #FF0000;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            color: #FF0000;
        }
        </style>
</head>
<body style="width:100%">
    <form id="form1" runat="server">
    <div style="width:100%">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="55px" Width="153px" ImageUrl="~/img/logo3.gif" OnClick="ImageButton1_Click" />
        <asp:Label ID="Ltitle" runat="server" Text="个人中心" Font-Size="XX-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="homePage.aspx">首页</asp:LinkButton>     
    <hr />
        <div style="width:100%">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2" style="vertical-align:top;text-align:center">
                        <br />
                        <asp:Button ID="btninformation" runat="server" Text="个人信息" OnClick="btninformation_Click" BackColor="White" BorderStyle="None" Font-Size="Large" />
                        <br />
                        <br />
                        <asp:Button ID="btnresume" runat="server" Text="个人简历" OnClick="btnresume_Click" BackColor="White" BorderStyle="None" Font-Size="Large" />
                        <br />
                        <br />
                        <asp:Button ID="btncollection" runat="server" Text="我的收藏" OnClick="btncollection_Click" BackColor="White" BorderStyle="None" Font-Size="Large" />
                        <br />
                        <br />
                        <asp:Button ID="btnfindjob" runat="server" Text="我的求职" OnClick="btnfindjob_Click" BackColor="White" BorderStyle="None" Font-Size="Large" />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style1">
                        <asp:Panel ID="pan_information" runat="server">
                            <br />
                            姓名： 
                            <asp:TextBox ID="txtName" runat="server" Font-Size="Medium"></asp:TextBox>
                            <br />
                            <br />
                            性别： 
                            <asp:TextBox ID="txtSex" runat="server" Font-Size="Medium"></asp:TextBox>
                            <br />
                            <br />
                            年龄： 
                            <asp:TextBox ID="txtAge" runat="server" Font-Size="Medium"></asp:TextBox>
                            <br />
                            <br />
                            学校： 
                            <asp:TextBox ID="txtSchool" runat="server" Font-Size="Medium"></asp:TextBox>
                            <br />
                            <br />
                            学院： 
                            <asp:TextBox ID="txtAcademy" runat="server" Font-Size="Medium"></asp:TextBox>
                            <br />
                            <br />
                            专业： 
                            <asp:TextBox ID="txtMajor" runat="server" Font-Size="Medium"></asp:TextBox>
                            <br />
                            <br />
                            <div style="width:100%">
                              <div style="width:auto">
                                  <label style="float:left;">特长：</label>


                              </div>
                                  <asp:TextBox ID="txtSpecialty" runat="server" Font-Size="Large" Height="129px" TextMode="MultiLine" Width="418px"></asp:TextBox>
                            </div>
                           <div >
                               <asp:Label ID="Label1" runat="server"></asp:Label>
                               <asp:Label ID="Label3" runat="server"></asp:Label>
                               <br />
                               <br />
                               <br />
                               <br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:Button ID="btn_information" runat="server" Font-Size="Medium" Text="保存" OnClick="btn_information_Click" />
                               <asp:Button ID="btnAlter" runat="server" Font-Size="Medium" OnClick="btnAlter_Click" Text="修改" />
                           </div>
                           
                            <br />
                        </asp:Panel>
                        <asp:Panel ID="pan_resume" runat="server" Visible="False">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">*</span>标题：<asp:TextBox ID="txttile" runat="server" Font-Size="Medium" Width="377px"></asp:TextBox>
                             <br />
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style5">*</span>职位类型：<asp:TextBox ID="txtjobstyle" runat="server" Font-Size="Medium" Width="377px"></asp:TextBox>
                             <br />
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style5">*</span>姓名：<asp:TextBox ID="txtrealname" runat="server" Font-Size="Medium" Width="377px"></asp:TextBox>
                             <br />
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="auto-style5">*</span>性别：<asp:DropDownList ID="ddSex" runat="server" Font-Size="Medium">
                                 <asp:ListItem Value="man">男</asp:ListItem>
                                 <asp:ListItem Value="women">女</asp:ListItem>
                             </asp:DropDownList>
                             &nbsp;&nbsp;<span class="auto-style5">*</span>出生年月：<asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" Font-Size="Medium">
                             </asp:DropDownList>
                             &nbsp;年 
                             <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="true" Font-Size="Medium">
                             </asp:DropDownList>
                             &nbsp;月 
                             <br />
                             <br />
                             <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *</span>学校：<asp:TextBox ID="txtUniversity" runat="server" Font-Size="Medium"></asp:TextBox>
                             <br />
                             <br />
                             <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *</span>专业：<asp:TextBox ID="txtProfession" runat="server" Font-Size="Medium"></asp:TextBox>
                             <br />
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style5"> *</span>工作年限：<asp:DropDownList ID="ddlWorkyear" runat="server" Font-Size="Medium">
                                 <asp:ListItem>一年</asp:ListItem>
                                 <asp:ListItem>两年</asp:ListItem>
                                 <asp:ListItem>三年</asp:ListItem>
                                 <asp:ListItem>三年以上</asp:ListItem>
                                 <asp:ListItem>无工作经验</asp:ListItem>
                             </asp:DropDownList>
                             <br />
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style5">&nbsp; *</span>学历：<asp:DropDownList ID="ddlEducation" runat="server" Font-Size="Medium">
                                 <asp:ListItem>本科</asp:ListItem>
                                 <asp:ListItem>专科</asp:ListItem>
                                 <asp:ListItem>硕士</asp:ListItem>
                                 <asp:ListItem>博士</asp:ListItem>
                             </asp:DropDownList>
                             <br />
                             <br />
                             <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *</span>期望工作区域：<asp:TextBox ID="txtWorkplace" runat="server" Font-Size="Medium" Width="378px"></asp:TextBox>
                             <br />
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="auto-style5">&nbsp; *</span>期望月薪：<asp:DropDownList ID="ddlEmoney" runat="server" Font-Size="Medium">
                                 <asp:ListItem>1000到3000</asp:ListItem>
                                 <asp:ListItem>3000到5000</asp:ListItem>
                                 <asp:ListItem>5000以上</asp:ListItem>
                             </asp:DropDownList>
                             <br />
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="auto-style5">&nbsp;&nbsp; *</span>手机：<asp:TextBox ID="txtPhone" runat="server" Font-Size="Medium" Width="202px"></asp:TextBox>
                             <br />
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 邮箱：<asp:TextBox ID="txtMail" runat="server" Font-Size="Medium" Width="204px"></asp:TextBox>
                             <br />
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 籍贯：<asp:TextBox ID="txtHome" runat="server" Font-Size="Medium" Width="378px"></asp:TextBox>
                             <br />
&nbsp;
                             <div style="width:auto">
                                 <div style="width:auto">
                                     <label style="float:left;">
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 自我描述：</label>
                                 </div>
                                 <asp:TextBox ID="txtDescribe" runat="server" Font-Size="Large" Height="115px" TextMode="MultiLine" Width="386px"></asp:TextBox>
                             </div>
                             &nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
                             <asp:Label ID="Label5" runat="server"></asp:Label>
&nbsp;
                             <br />
                             <br />
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnPublishresume" runat="server" Font-Size="Medium" OnClick="btnPublishresume_Click" Text="立即发布" />
                             &nbsp;<asp:Button ID="btnAresume" runat="server" Font-Size="Medium" OnClick="btnAresume_Click" Text="修改" />
                        </asp:Panel>
                      
                        <asp:Panel ID="pan_collection" runat="server" Wrap="False" Visible="False">
                            

                            
                            &nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" Height="121px" OnRowDataBound="GridView1_RowDataBound" PageSize="6" ShowHeader="False" Width="452px" OnRowDeleting="GridView1_RowDeleting" Font-Size="Medium" >
                                <Columns>
                                    <asp:HyperLinkField DataNavigateUrlFields="pos_id" DataNavigateUrlFormatString="~/show.aspx?id={0}" DataTextField="pos_name" DataTextFormatString="·{0}" HeaderText="pos_name">
                                    <ItemStyle Font-Overline="false" HorizontalAlign="Left" />
                                    </asp:HyperLinkField>
                                    <asp:BoundField DataField="com_name" HeaderText="com_name" />
                                    <asp:BoundField DataField="time" DataFormatString="{0:d}" HeaderText="time" />
                                    
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="true" />
                                </Columns>
                            </asp:GridView>
                            <br />
                            当前页码为：[<asp:Label ID="LabelPage" runat="server" Text="1"></asp:Label>
                            ]&nbsp;总页码为：[<asp:Label ID="LabelTotalPage" runat="server" Text=""></asp:Label>
                            ]
                            <asp:LinkButton ID="LinkButtonFirst" runat="server" OnClick="LinkButtonFirst_Click">首页</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButtonPrev" runat="server" OnClick="LinkButtonPrev_Click">上一页</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButtonNext" runat="server" OnClick="LinkButtonNext_Click">下一页</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButtonLast" runat="server" OnClick="LinkButtonLast_Click">末页</asp:LinkButton>
                    
                                </asp:Panel>
                         <asp:Panel ID="pan_findjob" runat="server" Visible="False">
                                                  
                            &nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" GridLines="None" Height="121px" OnRowDataBound="GridView2_RowDataBound" PageSize="6" ShowHeader="False" Width="452px" OnRowDeleting="GridView2_RowDeleting" Font-Size="Medium">
                                <Columns>
                                    <asp:HyperLinkField DataNavigateUrlFields="pos_id" DataNavigateUrlFormatString="~/show.aspx?id={0}" DataTextField="pos_name" DataTextFormatString="·{0}" HeaderText="pos_name">
                                    <ItemStyle Font-Overline="false" HorizontalAlign="Left" />
                                    </asp:HyperLinkField>
                                    <asp:BoundField DataField="com_name" HeaderText="com_name" />
                                    <asp:BoundField DataField="time" DataFormatString="{0:d}" HeaderText="time" />
                                    
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="true" />
                                </Columns>
                            </asp:GridView>
                            <br />
                            当前页码为：[<asp:Label ID="LabelPage1" runat="server" Text="1"></asp:Label>
                            ]&nbsp;总页码为：[<asp:Label ID="LabelTotalPage1" runat="server" Text=""></asp:Label>
                            ]
                            <asp:LinkButton ID="LinkButtonFirst1" runat="server" OnClick="LinkButtonFirst1_Click">首页</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButtonPrev1" runat="server" OnClick="LinkButtonPrev1_Click">上一页</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButtonNext1" runat="server" OnClick="LinkButtonNext1_Click">下一页</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButtonLast1" runat="server" OnClick="LinkButtonLast1_Click">末页</asp:LinkButton>
                        
                                            </asp:Panel>
                        
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                
            </table>
           
        </div>
        

    </div>
    </form>
</body>
</html>
