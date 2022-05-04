<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="teknoloji2.aspx.cs" Inherits="kisiselblogsitem.teknoloji2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater ID="teknolojik2" runat="server">
        <ItemTemplate>

   <div class="teknolojik_icerik_dis">          
          <div class="teknolojik_icerik_baslik" style="margin-bottom:30px; margin-left:-15px;"><p style="font-size: 25px; font-weight:bold; font-family:system-ui; color:#19191a; margin: 0px; "><%#Eval("baslik")%></p></div>
          
        <div class="teknolojik_icerik">
           
              <p style="font-weight: normal; line-height: 1.56;  font-size: 20px;  font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("on_yazi")%></p>              
            </div>      
          
       <div class="teknolojik_icerik_fotograf"><img src="<%#Eval("resim")%>" width="700" height="380" /></div>
          
            <div class="teknolojik_icerik">
         
              <p style="font-weight: normal; line-height: 1.56;  font-size: 20px;  font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%><br /><br /><%#Eval("icerik2")%><br /><br /><%#Eval("icerik3")%><br /><br /><%#Eval("icerik4")%><br /><br /><%#Eval("icerik5")%></p>
        
            </div>
     
     </div>
    </ItemTemplate>
    </asp:Repeater>
</asp:Content>
