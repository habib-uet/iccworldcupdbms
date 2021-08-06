<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="clubs.aspx.cs" Inherits="iccworldcupdbms.clubs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
	
	<br />
		<asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:HyperLinkField DataTextField="club_nmae" DataNavigateUrlFields="club_test_id,club_ODI,club_T_20_id,club_id" DataNavigateUrlFormatString="~/clubsstats.aspx?club_test_id={0}&club_ODI={1}&club_T_20_id={2}&club_id={3}"
            HeaderText="Player Name" ItemStyle-Width = "150" />
    </Columns>
</asp:GridView>
	</div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
