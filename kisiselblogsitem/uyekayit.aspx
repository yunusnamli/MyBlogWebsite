<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyekayit.aspx.cs" Inherits="kisiselblogsitem.uyekayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kayıt Ol</title>
    <link href="style.css" rel="stylesheet" />
</head>

<body> 
     <form id="form1" runat="server">
     
        <div class="kullanici_resmi_1"><img src="images/kayit.png"/></div>
       
    <table  style=" font-family:Consolas; font-weight:600; font-size:16px;   border:2px solid black;  position:relative;  height:300px; width:390px; margin:180px auto; box-shadow: 5px 5px 20px black, -5px -5px 10px orange; float:left">
        <tr> 
            <td style="color:black; width:150px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kullanıcı Adı:</td> <td>
                <asp:TextBox ID="TextBox_kAdi" runat="server" Width="150px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="color:black;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Şifre:</td> <td>
                <asp:TextBox ID="TextBox_sifre" runat="server"  Width="150px" TextMode="Password" minlength="8" maxlength="15" CssClass="auto-style3"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="color:black;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-posta:</td>
            <td><asp:TextBox ID="TextBox_eposta" runat="server"  Width="150px"></asp:TextBox></td>
        </tr>
         <tr>
            <td style="color:black;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telefon:</td> 
             <td><asp:TextBox ID="TextBox_telefon" runat="server"  Width="150px"></asp:TextBox></td>
        </tr>
       <tr>
           <td style="color:black; width:170px" >&nbsp;&nbsp;Hatırlatma Sorusu:</td>
            <td><asp:DropDownList ID="hatirlatma" runat="server" style="width:159px;">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>En sevdiğiniz kitap?</asp:ListItem>
                    <asp:ListItem>En sevdiğiniz yemek?</asp:ListItem>
                    <asp:ListItem>En sevdiğiniz hayvan?</asp:ListItem>
                    <asp:ListItem >İlkokul öğretmeninizin adı?</asp:ListItem>
                </asp:DropDownList>
</td>
       </tr>

          <tr>
            <td style="color:black;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cevap:</td> 
             <td><asp:TextBox ID="TextBox_cevap" runat="server"  Width="150px"></asp:TextBox></td>
        </tr>


        <tr>
<td style="color:black;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rol Seçiniz:</td>
            <td><asp:DropDownList ID="uye_rol" runat="server" >
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Yazar</asp:ListItem>
                    <asp:ListItem>Standart Üye</asp:ListItem>
                </asp:DropDownList>
</td>
       </tr>
     
         <tr>   
            <td >&nbsp;&nbsp;<asp:Button Text="Kayıt Ol"  style="width:120px; height:35px; outline:none; background-color:#232630; border-radius:20px;  font-size:16px; color:white; " runat="server" OnClick="buton_kayit" CssClass="btn_kayit" /> </td>
           
             <td><asp:Button ID="buton_iptal" CssClass="btn_iptal" runat="server" Text="Ana Sayfaya Dön" style="float:left; width:155px; height:35px; text-align:center; line-height:35px; background-color:#0099CC; border:1px solid #0099CC; color:white; border-radius:20px; font-size:18px; margin-left:20px" PostBackUrl="~/Anasayfa.aspx" /></td>
          </tr>
      
    </table>
     
          <div class="kullanici_resmi_2"><img src="images/kayit.png"/></div>
    </form>
</body>
</html>
