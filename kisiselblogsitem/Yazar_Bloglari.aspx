<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Yazar_Bloglari.aspx.cs" Inherits="kisiselblogsitem.Yazar_Bloglari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="uyari" runat="server">
       
        <div style="width:856px; height:auto; margin-left:90px; margin-top:50px; margin-bottom:50px;"> <asp:Label ID="kullanici_uyari" runat="server" Text="" style=" font-size: 21px; font-weight:bold; font-family:system-ui; color:#ee0000; margin-left:90px;"></asp:Label> </div>
    
    </asp:Panel>

    <asp:Panel ID="icerik_ekle_gözat" runat="server">
    <div class="yazar_icerik">
        <div class="icerik_ekle_resim"><img src="images/ekleme1.png" style="width:150px; height:150px; border-radius:80px;" /></div>
       <div class="yazi"><p style="font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black; margin-top:50px;"><a href="Yazar_Blog_İcerikleri.aspx" style="text-decoration:none; color:black">Blog paylaşmak ya da yazarlarımızın bloglarına göz atmak için tıklayınız...</a></p></div>
        <div class="icerik_arastir_resim"><img src="images/arama1.jpg" style="width:150px; height:150px; border-radius:80px;" /></div>
    </div>
   </asp:Panel>
     
    <asp:Panel ID="yazar_bloglari" runat="server">
     <asp:Repeater ID="bloglar" runat="server">
               <ItemTemplate>
        <div class="icerikler" style="margin-left:130px; box-shadow: 2px 2px 10px #ff3030, -2px -2px 5px #6959cd;">
        <div class="icerik_yazi">
        
            <p style="margin:0px; margin-left:20px; margin-top:15px; font-size: 13px;  font-weight:bolder;  text-transform: uppercase; font-family:  system-ui; color: #7a8085;"><%#Eval("kategori")%></p>
            <a href ="<%#Eval("blog_link_adresi")%>" target="_blank"><p style="margin:0px; margin-left:20px; margin-top:10px;  font-size: 19px; font-weight:bold; font-family:system-ui; color:#19191a;"><%#Eval("blog_baslik")%></p></a>
            <p style="margin:0px; margin-left:20px; margin-top:10px; font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black;"><%#Eval("blog_icerik")%></p>
            <asp:Label ID="Label7" runat="server" Text='' style="margin:0px; margin-left:20px; margin-top:20px; font-size: 16px; font-weight:600;  line-height: 20px; font-family:system-ui;  color: #7a8085;"><%#Eval("blog_yazari")%></asp:Label><asp:Label ID="Label8" runat="server" Text="" style="margin:0px; margin-left:20px; margin-top:5px; font-size: 16px; font-weight:600;  line-height: 20px; font-family:system-ui;  color: #7a8085;"><%#Eval("blog_eklenme_tarihi")%></asp:Label>
            
        
        </div>                
                 
            <div class="icerik_resim">
            
          <a href="<%#Eval("blog_link_adresi")%>" target="_blank"> <img src="<%#Eval("blog_resim")%>"  /> </a>

            </div>     
        </div>
        </ItemTemplate>
           </asp:Repeater>
        </asp:Panel>

</asp:Content>
