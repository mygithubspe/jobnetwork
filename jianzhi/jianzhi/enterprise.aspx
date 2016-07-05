<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enterprise.aspx.cs" Inherits="jianzhi_enterprise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="text-align:center">
    <form id="form1" runat="server">        
    <div>
        <div style="text-align:center"; class="h1">
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="完善公司信息"></asp:Label>
        </div>
        <br />
        <br />
        <div class="h2">
        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="公司名称:"></asp:Label> &nbsp;
        <asp:TextBox ID="txtcompany" runat="server" Font-Size="Medium" Width="147px"></asp:TextBox>
        </div ><br />
        <br />
        
        
       <div class="h2">
        <asp:Label ID="Label3" runat="server" Text="公司行业：" Font-Size="Medium"></asp:Label> &nbsp;
        <asp:DropDownList ID="ddltype" runat="server" Width="144px" Font-Size="Medium">
            <asp:ListItem>IT/通信</asp:ListItem>
            <asp:ListItem>金融/银行</asp:ListItem>
            <asp:ListItem>贸易/制造</asp:ListItem>
            <asp:ListItem>房地产</asp:ListItem>
            <asp:ListItem>服务业</asp:ListItem>
            <asp:ListItem>物流/运输</asp:ListItem>
        </asp:DropDownList>
        </div><br /><br />
        <div class="h2">
        <asp:Label ID="Label4" runat="server" Text="公司性质：" Font-Size="Medium"></asp:Label> &nbsp;
        <asp:DropDownList ID="ddlproperty" runat="server" Width="144px" Font-Size="Medium">
            <asp:ListItem>外商独资</asp:ListItem>
            <asp:ListItem>合资</asp:ListItem>
            <asp:ListItem>上市公司</asp:ListItem>
            <asp:ListItem>国企</asp:ListItem>
            <asp:ListItem>事业单位</asp:ListItem>
            <asp:ListItem>私企/民营</asp:ListItem>
            <asp:ListItem>股份制</asp:ListItem>
            <asp:ListItem>其他</asp:ListItem>
        </asp:DropDownList>
        </div><br /><br />
       <div class="h2">
        <asp:Label ID="Label5" runat="server" Text="公司规模:" Font-Size="Medium"></asp:Label> &nbsp;
        <asp:DropDownList ID="ddlsize" runat="server" Width="144px" Font-Size="Medium">
            <asp:ListItem>20人以下</asp:ListItem>
            <asp:ListItem>21-50人</asp:ListItem>
            <asp:ListItem>51-100人</asp:ListItem>
            <asp:ListItem>101-300人</asp:ListItem>
            <asp:ListItem>301-500人</asp:ListItem>
            <asp:ListItem>500人以上</asp:ListItem>
        </asp:DropDownList>
        </div><br /><br />
        <div class="h2">
            <asp:Label ID="Label6" runat="server" Text="公司地址:" Font-Size="Medium"></asp:Label> &nbsp;
        <asp:TextBox ID="txtaddress" runat="server" Font-Size="Medium" Width="143px"></asp:TextBox>
        </div>
        <br />
        <br />
        <div style="text-align:right;width:650px" >
            <b><asp:Label ID="Label7" runat="server" Text="公司介绍：" Font-Size="Medium"></asp:Label> &nbsp;</b>
        </div>
         <div class="h2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSdescribe" runat="server" Font-Size="Medium" Height="80px" TextMode="MultiLine" Width="236px"></asp:TextBox>
        </div>                      
        <br /> 
        <div style="text-align:right;width:690px" >
            <b><asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="上传营业执照："></asp:Label> &nbsp;</b>
        </div>       
        <div>
            <br />
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="btn_upload" runat="server"  Text="上传" Font-Size="Medium" onclick="btn_upload_Click"/>
            <asp:FileUpload ID="pic_upload" Font-Size="Medium" runat="server" />
            <asp:Label ID="lbl_pic" runat="server" class="pic_text"></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上传图片格式为.jpg, .gif, .bmp,.png,图片大小不得超过8M<br />
        </div>
        <div class="pic_image">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Image ID="pic" runat="server" Height="150px" Width="150px" />
        </div>
        </div>
        <br /><br />
        <div class="h2">
        <asp:Button ID="btnfinish" runat="server" Font-Size="X-Large" Text="完成" BackColor="#FF0066" OnClick="btnpublish_Click" Width="104px" />    
        </div><br />
        <br />
        <br />
        <br />    
    </form>
</body>
</html>
