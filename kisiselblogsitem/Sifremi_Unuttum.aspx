<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Sifremi_Unuttum.aspx.cs" Inherits="kisiselblogsitem.Sifremi_Unuttum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div class="Sifre">
    <div class="sifre_hatirlatma"><p style="margin:0px; text-align:center; line-height:44px; font-family:'Times New Roman'; font-size:24px; font-weight:bold">Şifre Hatırlatma</p></div>
                         
    <div class="sifremi_hatirlat">
                     
        <asp:Label ID="Kullanici_Adi" runat="server" Text="" style="margin-left:25px;" ><font color="black" face="Times New Roman" size="4">Kullanıcı Adı:</font></asp:Label>
                     <asp:TextBox ID="textbox_kullanici_adi" runat="server" style=" width:180px; height:5px; border:1px solid grey; padding:10px; margin-left:0px;"></asp:TextBox>
        <asp:Button ID="kullanici_sorusu" runat="server" Text="Tamam"   style=" float:left; width:80px; height:30px; text-align:center; line-height:30px; background-color:cornflowerblue; border:1px solid black; color:white; font-size:18px; margin-left:340px; margin-top:-30px; cursor:pointer " OnClick="kullanici_sorusu_Click"/>
                          <br/><br/>                     
        <asp:Label ID="lblhatirlatma_sorusu" runat="server" Text="" style=" font-weight: bold; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black;">Hatırlatma Sorunuz:</asp:Label><asp:Label ID="hatirlatma_sorusu" runat="server" Text="" style="font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black; margin-left:2px;"></asp:Label><br /><br />
        
         <asp:Label ID="Kullanici_Cevap" runat="server" Text="" ><font color="black" face="Times New Roman" size="4">Kullanıcı Cevabı:</font></asp:Label>
                     <asp:TextBox ID="kullanici_sifree" runat="server" style=" width:180px; height:5px; border:1px solid grey; padding:10px;"></asp:TextBox>
        <asp:Button ID="kullanici_cevabi" runat="server" Text="Göster"   style=" float:left; width:80px; height:30px; text-align:center; line-height:30px; background-color:cornflowerblue; border:1px solid black; color:white;  font-size:18px; margin-left:340px; margin-top:-30px; cursor:pointer; " OnClick="kullanici_cevabi_Click"/>                         
                        <br/><br/>                     
        <asp:Label ID="lbl_sifre" runat="server" Text="" style=" font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black;">Şifreniz:</asp:Label>
  <asp:Label ID="lbl_kullanici_sifre" runat="server" Text="" style=" font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black;"></asp:Label>
                    
                     </div>  
    </div>
</asp:Content>
