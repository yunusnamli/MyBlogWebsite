﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="teknoloji1.aspx.cs" Inherits="kisiselblogsitem.teknoloji1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Repeater ID="teknolojik1" runat="server">
        <ItemTemplate>

   <div class="teknolojik_icerik_dis">          
          <div class="teknolojik_icerik_baslik" "><p style="font-size: 25px; font-weight:bold; font-family:system-ui; color:#19191a; margin: 0px; "><%#Eval("baslik")%></p></div>
          
        <div class="teknolojik_icerik">
           
              <p style="font-weight: normal; line-height: 1.56;  font-size: 20px;  font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("on_yazi")%></p>              
            </div>      
          
       <div class="teknolojik_icerik_fotograf"><img src="<%#Eval("resim")%>" width="700" height="380" /></div>
          
            <div class="teknolojik_icerik">
         
              <p style="font-weight: normal; line-height: 1.56;  font-size: 20px;  font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%><br /><br /><%#Eval("icerik2")%><br /><br /><%#Eval("icerik3")%><br /><br /><%#Eval("icerik4")%></p>
        
            </div>
     
     </div>
    </ItemTemplate>
    </asp:Repeater>
</asp:Content>
