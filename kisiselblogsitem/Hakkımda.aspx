<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Hakkımda.aspx.cs" Inherits="kisiselblogsitem.Hakkımda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2 style="font-family: Raleway,sans-serif; font-size: 36px; font-weight: 600; text-transform: capitalize; color: #000; margin: 0px; margin-left: 450px; padding-top: 40px">Hakkımda</h2>
	<hr width="90" size="1" color="#777" style="margin-top: 5px; margin-left: 485px; " >
  <div style="width: 25px; height: 7px; background-color: #2196f3; margin-left: 520px; margin-top: -12px"></div>
   
     <asp:Repeater ID="repeater_hakkimda" runat="server">
<ItemTemplate>
    
    <div class="fotograf"><img src="<%#Eval("resim")%>" width="250" height="300" style="border-radius: 17px; box-shadow: 5px 5px 20px black, -5px -5px 10px orange"></div>
    <div class="hakkımda_yazi"><p style="font-size: 20px; color: black;  font-family: 'Indie Flower', cursive; margin: 0px;">Yeni nesil bilgisayar mühendisi</p>
      
      <p style="font-size: 17px; color: black;  font-family: 'Indie Flower', cursive; margin: 0px; margin-top: 10px">
      	<%#Eval("hakkimda_yazisi")%> </p>
     <a href="Pdf/cv.pdf" target="_blank" style="text-decoration: none;"><div class="pdf"><p style="margin: 0px; text-align: center; color: black; font-family: arial; font-weight: bold; font-size: 15px ">CV'Mİ GÖRÜNTÜLE</p></div></a>
    </div>

</ItemTemplate>
 </asp:Repeater>
</asp:Content>
