<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="blog4.aspx.cs" Inherits="kisiselblogsitem.blog4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <asp:Repeater ID="blog_4" runat="server">
        <ItemTemplate>

   <div class="blog_icerik_dis">          
          <div class="blog_icerik_baslik" style="margin-left:-0.5px;"><p style="font-size: 25px; font-weight:bold; font-family:system-ui; color:#19191a; margin: 0px; "><%#Eval("blog_baslik")%></p></div>
          
        <div class="blog_icerik">
           
              <p style="font-weight: normal; line-height: 1.56;  font-size: 20px;  font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("blog_on_yazi")%></p>              
            </div>      
          
       <div class="blog_icerik_fotograf"><img src="<%#Eval("resim")%>" width="700" height="380" /></div>
          
            <div class="blog_icerik">
         
              <p style="font-weight: normal; line-height: 1.56;  font-size: 20px;  font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("blog_icerik_1")%><br /><br /><%#Eval("blog_icerik_2")%><br /><br /><%#Eval("blog_icerik_3")%><br /><br /><%#Eval("blog_icerik_4")%></p>
        
            </div>
     
     </div>
    </ItemTemplate>
    </asp:Repeater>
</asp:Content>
