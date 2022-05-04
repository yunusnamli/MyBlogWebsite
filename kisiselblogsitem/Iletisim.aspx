<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="kisiselblogsitem.Iletisim" MaintainScrollPositionOnPostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="width: 1100px; height: 550px; background-image:url(images/iletisim.jpg); background-repeat: no-repeat ; background-size: 100%; box-shadow: 10px 10px 20px black, -5px 0px 15px black;  margin-top:10px; margin-left:-50px; ">
		<div class="iletisim_mail">
            
       <h2 style="font-family: Raleway,sans-serif; font-size: 36px; font-weight: 600; text-transform: capitalize; color: #000; margin: 0px; margin-left: 68px; padding-top: 20px; ">İletişim Formu</h2>
	<hr width="90" size="1" color="#777" style="margin-top: 5px; margin-left: 155px; " >
  <div style="width: 25px; height: 7px; background-color: #2196f3; margin-left: 188px; margin-top: -12px; margin-bottom:30px;"></div>
      
            <asp:Label ID="Label1" runat="server" Text="" ><font color="black" face="Times New Roman" size="4">Adınız Soyadınız:</font></asp:Label>
            
      <asp:TextBox ID="TextBox1" runat="server" style="width:210px;" ></asp:TextBox> 
            <br/><br/>
             <asp:Label ID="Label7" runat="server" Text="" ><font color="black" face="Times New Roman" size="4">Mail Adresiniz:</font></asp:Label>
            
      <asp:TextBox ID="TextBox2" runat="server" style="width:210px; margin-left:18px;" ></asp:TextBox> 
              <br/><br/>

      <asp:Label ID="Label2" runat="server" Text="" ><font color="black" face="Times New Roman" size="4">Kime:</font></asp:Label>
            
      <asp:TextBox ID="TextBox3" runat="server" style="margin-left:85px; width:210px;" TextMode="Email" Enabled="False" >namli.yunuss@gmail.com</asp:TextBox>
            <br/><br/>
       
      <asp:Label ID="Label3" runat="server" Text="" ><font color="black" face="Times New Roman" size="4">Konu:</font></asp:Label>
            
      <asp:TextBox ID="TextBox4" runat="server" style="margin-left:85px; width:210px;" ></asp:TextBox>
               
            <br/><br/>
      
             <asp:Label ID="Label4" runat="server" Text="" ><font color="black" face="Times New Roman" size="4">Mesajınız:</font></asp:Label>
            
            <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" style="margin-left:135px; width:210px; height:170px; margin-top:-20px "></asp:TextBox>

             <br/><br/>
            
            <asp:Label ID="Label5" runat="server" Text=""><font color="black" face="Times New Roman" size="4">Dosya Yükle:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></asp:Label>
            <asp:FileUpload ID="FileUpload1" Font-Size="Small" runat="server" />

               <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" Width="102px"  style="border-radius:10px;" />
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
         
              <div style="margin-top:5px;"> <asp:Button ID="Button2" runat="server" style="border-radius:10px;" Text="Mesajı Temizle" OnClick="Button2_Click1" /> <asp:Label ID="Label8" runat="server" Text=""></asp:Label>  </div>            
         
        
        </div>
       	</div>

</asp:Content>
