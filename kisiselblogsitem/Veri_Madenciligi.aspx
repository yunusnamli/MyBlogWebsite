<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Veri_Madenciligi.aspx.cs" Inherits="kisiselblogsitem.Iletisim" MaintainScrollPositionOnPostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <asp:Repeater ID="veri_madenciligi" runat="server">
     <ItemTemplate>
        <div class="veri_dis">
         
         <div class="veri_fotograf"><img src="<%#Eval("resim")%>" width="700" height="380" /></div>
        
          <div class="veri_baslik"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
        
          <div class="veri_icerik">
           
              <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%> <br /><br /><%#Eval("icerik2")%></p>      
        
          </div>
     
     </div>
        </ItemTemplate>
        </asp:Repeater>

     <asp:Repeater ID="veri_madenciligi1" runat="server">
     <ItemTemplate>
        <div class="veri_dis">
                        
          <div class="veri_basliklari"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
        
            <div class="veri_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="300" /></div>
          
            <div class="veri_icerikleri">
           
              <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%></p>      
        
          </div>
        
           
     
     </div>
        </ItemTemplate>
        </asp:Repeater>


    <asp:Repeater ID="veri_madenciligi2" runat="server">
     <ItemTemplate>
        <div class="veri_dis">
                        
          <div class="veri_basliklari"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
         
            <div class="veri_icerikleri">
           
              <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px; margin-top:35px;"><%#Eval("icerik1")%></p>      
        
          </div>
        
           
     
     </div>
        </ItemTemplate>
        </asp:Repeater>

        <asp:Repeater ID="veri_madenciligi3" runat="server">
     <ItemTemplate>
        <div class="veri_dis">
                        
          <div class="veri_basliklari"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
        
            <div class="veri_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="300"  style="margin-top:20px;"/></div>
          
            <div class="veri_icerikleri">
           
              <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px; margin-top:60px;"><%#Eval("icerik1")%><br /><br /><%#Eval("icerik2")%><br /><%#Eval("icerik3")%><br /><%#Eval("icerik4")%><br /><%#Eval("icerik5")%><br /><%#Eval("icerik6")%><br /><%#Eval("icerik7")%><br /><%#Eval("icerik8")%><br /><%#Eval("icerik9")%></p>      
        
          </div>

     </div>
        </ItemTemplate>
        </asp:Repeater>

     <asp:Repeater ID="veri_madenciligi4" runat="server">
     <ItemTemplate>
        <div class="veri_dis">
                        
          <div class="veri_basliklari"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
        
            <div class="veri_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="300"  style="margin-top:30px;"/></div>
          
            <div class="veri_icerikleri">
           
              <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px; margin-top:60px;"><%#Eval("icerik1")%></p>      
        
          </div>
        
           
     
     </div>
        </ItemTemplate>
        </asp:Repeater>

       <asp:Repeater ID="veri_madenciligi5" runat="server">
     <ItemTemplate>
        <div class="veri_dis">
                        
          <div class="veri_basliklari"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
        
            <div class="veri_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="300"  style="margin-top:20px;"/></div>
          
            <div class="veri_icerikleri">
           
              <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px; margin-top:60px;"><%#Eval("icerik1")%></p>      
        
          </div>  
     </div>
        </ItemTemplate>
        </asp:Repeater>



</asp:Content>
