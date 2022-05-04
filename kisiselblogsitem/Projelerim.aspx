<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Projelerim.aspx.cs" Inherits="kisiselblogsitem.Projelerim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class="slider">
 
     <asp:Repeater ID="slide_resim" runat="server">
  <ItemTemplate>

    <div class="slide"><img src="<%#Eval("proje_resimlerim")%>"/></div>      
  </ItemTemplate>
         </asp:Repeater>
          <div class="buton_geri" onclick="geri()"><img class="sol" src="images/buton_sol.png"/></div>
    <div class="buton_ileri" onclick="ileri()"><img class="sag" src="images/buton_sag.png"/></div>    
 
</div>

 <script type="text/javascript">
		    var slaytNo = 0;
		    var _slide = document.getElementsByClassName("slide");
		    var slideSayisi = _slide.length;

		    slideGoster(slaytNo);
		    function slideGoster(slideNumarasi) {
		        slaytNo = slideNumarasi;
		        if (slideNumarasi >= slideSayisi) {
		            slaytNo = 0;
		        }
		        if (slideNumarasi < 0) {
		            slaytNo = slideSayisi - 1;
		        }
		        for (var i = 0; i < slideSayisi ; i++) {
		            _slide[i].style.display = "none";
		        }
		        _slide[slaytNo].style.display = "block";
		    }

		    function geri() {
		        slaytNo--;
		        slideGoster(slaytNo);
		    }
		    function ileri() {
		        slaytNo++;
		        slideGoster(slaytNo);
		    }
		</script>
    
    <asp:Repeater ID="proje_yazi" runat="server">
        <ItemTemplate>

       <div class="proje_yazi">
    <p style="font-size: 17px; font-weight:bold; font-family:system-ui; color:red; margin-top: 5px;"><%#Eval("baslik1")%></p><p style=" font-weight: normal;  font-size: 18px;  font-family:  HelveticaNeue; color: black; margin-top: -36px; margin-left: 165px"><%#Eval("aciklama1")%></p>
<p style=" font-size:17px; font-weight: bold; font-family:system-ui; color:red;"><%#Eval("baslik2")%></p>
<p style=" font-weight: normal;   font-size: 18px;  font-family:  HelveticaNeue; color:black; margin-top:-36px; margin-left:253px"><%#Eval("aciklama2")%></p>

<p style="font-size:17px; font-weight: bold; font-family: system-ui; color:red;"><%#Eval("baslik3")%></p>
<p style="font-weight: normal;   font-size: 18px;  font-family:  HelveticaNeue; color: black; margin-top: -36px; margin-left: 150px; "><%#Eval("aciklama3")%></p>
         </div>
            </ItemTemplate>
    </asp:Repeater>



</asp:Content>
