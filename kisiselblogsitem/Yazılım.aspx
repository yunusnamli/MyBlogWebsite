<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Yazılım.aspx.cs" Inherits="kisiselblogsitem.Yazılım" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <asp:Repeater ID="yazilim" runat="server">
    <ItemTemplate>
         <div class="yazilim_dis">
         
         <div class="yazilim_fotograf"><img src="<%#Eval("resim")%>" width="700" height="380" /></div>
        
          <div class="yazilim_baslik"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
        
          <div class="yazilim_icerik">
           
              <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%> <br /><br /><%#Eval("icerik2")%> <br /><br /><%#Eval("icerik3")%><br /><br /><%#Eval("icerik4")%></p>      
        
          </div>
     
     </div>
   </ItemTemplate> 
         </asp:Repeater>

        <asp:Repeater ID="yazilim_1" runat="server">
    <ItemTemplate>
         <div class="yazilim_dis">
         
               <div class="yazilim_basliklari"><p style="font-size: 19px;  font-weight:bold; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
         <div class="yazilim_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="400" /></div>        
          <div class="yazilim_icerikleri">
             
               <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%><br /> <br /> <%#Eval("icerik2")%> </p>      
        
          </div>
     
     </div>
   </ItemTemplate> 
         </asp:Repeater>

       <asp:Repeater ID="yazilim_2" runat="server">
    <ItemTemplate>
         <div class="yazilim_dis">
         
               <div class="yazilim_basliklari"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
         <div class="yazilim_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="400" /></div>        
          <div class="yazilim_icerikleri">
             
               <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%><br /> <br /> <%#Eval("icerik2")%> <br /> <br /> <%#Eval("icerik3")%> </p>      
        
          </div>
     
     </div>
   </ItemTemplate> 
         </asp:Repeater>
     
        <asp:Repeater ID="yazilim_3" runat="server">
    <ItemTemplate>
         <div class="yazilim_dis">
         
               <div class="yazilim_basliklari"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
         <div class="yazilim_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="400" /></div>        
          <div class="yazilim_icerikleri">
             
               <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%><br /> <br /> <%#Eval("icerik2")%><br /> <br /> <%#Eval("icerik3")%> <br /> <br /> <%#Eval("icerik4")%>  </p>      
        
          </div>
     
     </div>
   </ItemTemplate> 
         </asp:Repeater>
        
    <asp:Repeater ID="yazilim_4" runat="server">
    <ItemTemplate>
         <div class="yazilim_dis">
         
               <div class="yazilim_basliklari"><p style=" font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
         <div class="yazilim_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="400" /></div>        
          <div class="yazilim_icerikleri">
             
               <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%><br /> <br /> <%#Eval("icerik2")%> <br /> <br /> <%#Eval("icerik3")%> <br /> <br /> <%#Eval("icerik4")%> <br /> <br /> <%#Eval("icerik5")%> </p>      
        
          </div>
     
     </div>
   </ItemTemplate> 
         </asp:Repeater>
        
    <asp:Repeater ID="yazilim_5" runat="server">
    <ItemTemplate>
         <div class="yazilim_dis">
         
               <div class="yazilim_basliklari"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
         <div class="yazilim_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="400" /></div>        
          <div class="yazilim_icerikleri">
             
               <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%><br /> <br /> <%#Eval("icerik2")%> <br /> <br /> <%#Eval("icerik3")%> <br /> <br /> <%#Eval("icerik4")%> <br /> <br /> <%#Eval("icerik5")%> <br /> <br /> <%#Eval("icerik6")%> <br /> <br /> <%#Eval("icerik7")%> <br /> <br /> <%#Eval("icerik8")%>   </p>      
        
          </div>
     
     </div>
   </ItemTemplate> 
         </asp:Repeater>
      
      <asp:Repeater ID="yazilim_6" runat="server">
    <ItemTemplate>
         <div class="yazilim_dis">
         
               <div class="yazilim_basliklari"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
         <div class="yazilim_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="400" /></div>        
          <div class="yazilim_icerikleri">
             
               <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%><br /> <br /> <%#Eval("icerik2")%> <br /> <br /> <%#Eval("icerik3")%> <br /> <br /> <%#Eval("icerik4")%>  </p>      
        
          </div>
     
     </div>
   </ItemTemplate> 
         </asp:Repeater>
        
    <asp:Repeater ID="yazilim_7" runat="server">
    <ItemTemplate>
         <div class="yazilim_dis">
         
               <div class="yazilim_basliklari"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"> <%#Eval("baslik")%> </p></div>
         <div class="yazilim_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="390" style="margin-top:20px;" /></div>        
          <div class="yazilim_icerikleri">
             
               <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%><br /> <br /> <%#Eval("icerik2")%> <br /> <br /> <%#Eval("icerik3")%> </p>      
        
          </div>
     
     </div>
   </ItemTemplate> 
         </asp:Repeater>
        
    <asp:Repeater ID="yazilim_8" runat="server">
    <ItemTemplate>
         <div class="yazilim_dis">
         
               <div class="yazilim_basliklari"><p style="font-size: 19px; font-weight:600; font-family:cursive; color:#333; margin: 0px;"><%#Eval("baslik")%></p></div>
         <div class="yazilim_fotograflar"><img src="<%#Eval("resim")%>" width="600" height="400" /></div>        
          <div class="yazilim_icerikleri">
             
               <p style="font-size: 17px;  line-height: 27px; font-family:  HelveticaNeue; color: black; margin: 0px;"><%#Eval("icerik1")%><br /> <br /> <%#Eval("icerik2")%> <br /> <br /> <%#Eval("icerik3")%> </p>      
        
          </div>
     
     </div>
   </ItemTemplate> 
         </asp:Repeater>

</asp:Content>
