<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="kisiselblogsitem.Anasayfaa" MaintainScrollPositionOnPostback="true"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            
    <div class="icerik">
    
           <asp:Repeater ID="icerik" runat="server">
               <ItemTemplate>
        <div class="icerikler">
        <div class="icerik_yazi">
        
            <p style="margin:0px; margin-left:20px; margin-top:15px; font-size: 13px;  font-weight:bolder;  text-transform: uppercase; font-family:  system-ui; color: #7a8085;"><%#Eval("kategori")%></p>
            <a href ="<%#Eval("link_adresi")%>" target="_blank"><p style="margin:0px; margin-left:20px; margin-top:10px;  font-size: 19px; font-weight:bold; font-family:system-ui; color:#19191a;"><%#Eval("baslik")%></p></a>
            <p style="margin:0px; margin-left:20px; margin-top:10px; font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black;"><%#Eval("icerik")%></p>
            <p style="margin:0px; margin-left:20px; margin-top:5px; font-size: 16px; font-weight:600;  line-height: 20px; font-family:system-ui;  color: #7a8085;"><%#Eval("eklenme_tarihi")%></p> 
            <asp:Label ID="Label7" runat="server" Text='' style="margin:0px; margin-left:20px; margin-top:20px; font-size: 16px; font-weight:600;  line-height: 20px; font-family:system-ui;  color: #7a8085;"></asp:Label><asp:Label ID="Label8" runat="server" Text="" style="margin:0px; margin-left:20px; margin-top:5px; font-size: 16px; font-weight:600;  line-height: 20px; font-family:system-ui;  color: #7a8085;"></asp:Label>
            
        
        </div>                
                 
            <div class="icerik_resim">
            
          <a href="<%#Eval("link_adresi")%>" target="_blank"> <img src="<%#Eval("resim")%>"  /> </a>

            </div>     
        </div>
        </ItemTemplate>
           </asp:Repeater>

        <asp:Panel ID="uye_yorumlari_panel" runat="server">
        <div class="uye_yorum_kismi">

            <p  style="margin:0px; margin-bottom:35px; text-align:center;   font-size: 30px; font-weight:bold; font-family:system-ui; color:#19191a;">-Blog Siteme Yorum Yapın-</p>
            <p style="margin:0px;  margin-top:5px;  font-size: 18px; font-weight:bold; font-family:system-ui; color:#19191a;">Kullanıcı Adınız:</p><div style="margin-top:-26px; margin-left:138px; "><asp:Label ID="uye_yorum_adi" runat="server" Text="" style="margin-top:10px; font-weight: normal; line-height: 1.56;  font-size: 20px;  font-family:  HelveticaNeue; color: black;"></asp:Label></div>
            
            <p style="margin:0px;  margin-top:10px;  font-size: 18px; font-weight:bold; font-family:system-ui; color:#19191a;" >Yorumunuz</p> 
            <asp:TextBox ID="uye_yorum" runat="server" style="width:694px; height:300px; font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black; " TextMode="MultiLine" ></asp:TextBox>
                <asp:Button ID="yorum_yap" runat="server" Text="Yorum Yap" style="float:left; width:699px; cursor:pointer; height:40px; text-align:center; line-height:40px; background-color:orange; border:1px solid black; color:white;  font-size:18px;" OnClick="yorum_yap_Click"/>
            <asp:Label ID="durum" runat="server" Text="" style=" font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black;"></asp:Label>            
        </div>
    </asp:Panel>

        <asp:Panel Id="gerekli" runat="server"> 
           <div style="margin-top:20px; width:699px; height:30px ;float:left;">  <p style="margin:0px; text-align:center;  font-size: 23px; font-weight:bold; font-family:system-ui; color:#ee0000;" >! Blog sayfama yorum yapmak için kayıt olmanız gerekmektedir.</p> </div>
        </asp:Panel>
        
        <div style="margin-top:40px; width:699px; height:40px; text-align:center; line-height:40px;  background-color:black; float:left;border-radius:10px;">
            <p  style="margin:0px;   font-size: 20px; font-weight:bold; font-family:system-ui; color:white; ">-Yorumlar-</p>
        </div>
       
        
         <asp:Repeater ID="yorum" runat="server">
            <ItemTemplate>
            <div class="yorumlar">
          

                <asp:Label ID="Label5" runat="server" Text='<%#Eval("kullanici_adi")%> ' style="font-size: 18px; font-weight:bold; font-family:system-ui; color:#19191a;"></asp:Label>  <asp:Label ID="Label6" runat="server" Text='' style="font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black;">kullanıcı adına ait yorum</asp:Label>
         
                <p style="margin:0px; font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black; "><%#Eval("yorum")%></p>
                    
        </div>
                </ItemTemplate>
            </asp:Repeater>
    </div>
     
    
    <div class="sag_taraf">

                <div class="Giris">
                   
                    <asp:Panel ID="panel_giris" runat="server">
                     <div class="giris_yap"><p style="margin:0px; text-align:center; line-height:44px; font-family:'Times New Roman'; font-size:24px; font-weight:bold">Giriş Yap</p></div>
                   
                     <div class="giris_kismi">
                     <asp:Label ID="Label1" runat="server" Text="" ><font color="black" face="Times New Roman" size="4">Kullanıcı Adı:</font></asp:Label>
                     <asp:TextBox ID="txtKullaniciAdi" runat="server" style=" width:180px; height:5px; border:1px solid grey; padding:10px;"></asp:TextBox>
                        
                          <br/><br/>
                     <asp:Label ID="Label2" runat="server" Text="" ><font color="black" face="Times New Roman" size="4">Şifre:&nbsp;&nbsp;&nbsp;&nbsp;</font></asp:Label>
                   
                     <asp:TextBox ID="txtSifre" TextMode="Password" runat="server" style=" width:180px; height:5px; border:1px solid grey; padding:10px; margin-bottom:3px"></asp:TextBox>
                         <a href="Sifremi_Unuttum.aspx" style="font-size:17px; color:blue;">Şifremi Unuttum</a>
                         <br/><br/>
                      
                         <asp:Button ID="btnGiris" CssClass="btn_giris" runat="server" OnClick="btnGiris_Click" Text="Giriş" style="float:left; width:100px; height:40px; text-align:center; line-height:40px; background-color:#0099CC; border:1px solid #0099CC; color:white; border-radius:20px; font-size:18px; margin-top:-2px;" />
                          <asp:Button ID="ButtonKayit" CssClass="btn_kayit" runat="server" OnClick="btnkayit_Click" Text="Kayıt Ol" style="float:left; width:100px; height:40px; text-align:center; line-height:40px; background-color:black; border:1px solid black; color:white; border-radius:20px; font-size:18px; margin-left:15px; margin-top:-2px; " PostBackUrl="~/uyekayit.aspx"  />
                         <asp:Label ID="lblcikti" runat="server" Text=""></asp:Label>
                    

                     </div>   
                   </asp:Panel>
                        
                    <asp:Panel ID="panel_kullanici" CssClass="panel_kullanici" runat="server">
                    <asp:Label ID="Label9" runat="server" Text="" style="font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black;">Hoş geldin,</asp:Label><asp:Label ID="lblkullaniciadi" runat="server" Text="" style="font-weight: normal; line-height: 1.56;  font-size: 18px;  font-family:  HelveticaNeue; color: black; margin-left:3px;"></asp:Label> <br /> <br /> 
                        <asp:Button ID="buton_cikis" CssClass="buton_cikis" runat="server" Text="Çıkış Yap" OnClick="btncikis_Click" style="width:100px; height:35px; outline:none; background-color:#232630; border-radius:20px; font-family:Consolas; font-size:16px; color:white;" />

                    </asp:Panel>

                         </div>
                
                <div class="teknolojik_bilgiler">
                    <div class="baslik"><p style="margin:0px; text-align:center; line-height:44px; font-family:'Times New Roman'; font-size:24px; font-weight:bold">Teknolojik Bilgiler</p></div>
                    <div class="bilgiler">
                        
                        <asp:Repeater ID="teknolojik_bilgiler" runat="server">
                            <ItemTemplate>
                            <div class="teknolojik_bilgi">
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Bilgi")%>' ></asp:Label><br/>
                           <p style="margin:0px; padding:0px; color:red;">Güncelleme: <asp:Label ID="Label4" runat="server" Text='<%#Eval("Tarih")%>' stye="color:red;"></asp:Label></p>
                            
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>

                </div>

            </div>
</asp:Content>
