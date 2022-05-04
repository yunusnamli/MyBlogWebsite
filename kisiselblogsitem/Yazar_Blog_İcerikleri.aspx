<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Yazar_Blog_İcerikleri.aspx.cs" Inherits="kisiselblogsitem.Yazar_Blog_İcerikleri_aspx"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="kullanici_rol" runat="server" Text=""></asp:Label>

  <div style="width:856px; height:auto; margin-left:50px; margin-top:30px; margin-bottom:10px;"> <asp:Label ID="kullanici_uyari" runat="server" Text="" style=" font-size: 21px; font-weight:bold; font-family:system-ui; color:#ee0000; "></asp:Label> </div>

    <asp:Panel ID="yazar_blog_ekleme_paneli" runat="server">
    <div style="width:700px; height:auto; margin-left:100px; margin-top:10px;">
  
         <asp:Label ID="Label1" runat="server" Text="" style=" font-size: 18px;  font-weight:bold; font-family:cursive; color:#333; " >Kullanıcı Adınız:</asp:Label><asp:Label ID="kullanici_adi" runat="server" Text="" style="font-weight: normal; line-height: 1.56;  font-size: 20px;  font-family:  HelveticaNeue; color: black; margin-left:5px;"></asp:Label><br />
         <asp:Label ID="Label2" runat="server" Text="" style=" font-size: 18px;  font-weight:bold; font-family:cursive; color:#333; " >Kullanıcı Rolünüz:</asp:Label><asp:Label ID="kulanici_roll" runat="server" Text="" style="font-weight: normal; line-height: 1.56;  font-size: 20px;  font-family:  HelveticaNeue; color: black; margin-left:5px;"></asp:Label><br />
         <asp:Label ID="Label3" runat="server" Text="" style=" font-size: 18px;  font-weight:bold; font-family:cursive; color:#333;" >Konu:</asp:Label><asp:TextBox ID="konu" runat="server" style=" font-weight: normal; line-height: 1.56;  font-size: 15px;  font-family:  HelveticaNeue; color: black; margin-left:2px;"></asp:TextBox><br /><br />
         <asp:Label ID="Label4" runat="server" Text="" style=" font-size: 18px;  font-weight:bold; font-family:cursive; color:#333; " >Blog Yazısı</asp:Label><br />
         <asp:TextBox ID="uye_blog_paylas" runat="server" style="width:694px; height:300px; font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black; " TextMode="MultiLine" ></asp:TextBox>
         
         <asp:Button ID="blog_paylas" runat="server" Text="Yazıyı Paylaş" style="float:left; width:699px; cursor:pointer; height:40px; text-align:center; line-height:40px; background-color:orange; border:1px solid black; color:white;  font-size:18px;" OnClick="blog_paylas_Click" />        
  <asp:Label ID="yazar_blog_paylasma_tarihi" runat="server" Text=""></asp:Label>
    </div>
       </asp:Panel>  
  
      <asp:Label ID="blog_konusu_ara" runat="server" Text="" style=" font-size: 18px;  font-weight:bold; font-family:cursive; color:#333; float:left; margin-left:100px; margin-top:20px;">Yazılan Blog Konuları:</asp:Label>
          
    <asp:DropDownList ID="blog_konulari" runat="server" style="float:left; margin-top:22px; border:1px solid blue; margin-left:5px; font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black;" DataSourceID="sqlverikaynagi" DataTextField="Blog_Konusu" DataValueField="Blog_Konusu">
   
    </asp:DropDownList>


    <asp:SqlDataSource ID="sqlverikaynagi" runat="server" ConnectionString="<%$ ConnectionStrings:blogveritabaniConnectionString %>" SelectCommand="SELECT [Blog_Konusu] FROM [Blog_Yazar_Icerikleri] GROUP BY [Blog_Konusu]"></asp:SqlDataSource>


   
    <asp:Button ID="blog_yazar_konusu" runat="server" Text="Konu Ara"  style="float:left; width:100px; height:40px; text-align:center; line-height:40px; background-color:black; border:1px solid black; color:white; border-radius:20px; font-size:18px; margin-left:15px; margin-top:12px" OnClick="blog_yazar_konusu_ara_Click"/>
     
    <asp:Repeater ID="yazar_konu_icerikleri" runat="server">
        <ItemTemplate>
     <div class="bloglar">
      
           <asp:Label ID="Label5" runat="server" Text="" style="font-size: 17px;  font-weight:bolder;   font-family:  system-ui; color: #7a8085;">Konu:</asp:Label> <asp:Label ID="Label6" runat="server" Text="" style="font-weight: normal; line-height: 1.50;  font-size: 18px;  font-family:  HelveticaNeue; color: black; margin-left:5px;" ><%#Eval("Blog_Konusu")%></asp:Label><br />
           <asp:Label ID="Label8" runat="server" Text="" style="font-size: 17px;  font-weight:bolder;   font-family:  system-ui; color: #7a8085;">Yazı:</asp:Label> <asp:Label ID="Label7" runat="server" Text="" style="font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black; margin-left:5px;" ><%#Eval("Blog_Icerigi")%></asp:Label><br />
       <div style="width:694px; height:20px;  float:left;  margin-top:0px ;  "> <asp:Label ID="Label9" runat="server" Text="" style=" font-size: 16px; font-weight:600;  line-height: 20px; font-family:system-ui;  color: #7a8085; "><%#Eval("Kullanici_Adi")%></asp:Label><asp:Label ID="Label10" runat="server" Text="" style=" font-size: 16px; font-weight:600;  line-height: 20px; font-family:system-ui;  color: #7a8085; margin-left:20px;"><%#Eval("yayinlama_tarihi")%></asp:Label></div> 
           
                           
     </div>
       
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
