<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="previouworldcup.aspx.cs" Inherits="iccworldcupdbms.previouworldcup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div>
	
	<br />
		<asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:HyperLinkField DataTextField="Worldcup_year" DataNavigateUrlFields="pw_id" DataNavigateUrlFormatString="~/previousworldcupstats.aspx?pw_id={0}"
            HeaderText="Player Name" ItemStyle-Width = "150" />
    </Columns>
</asp:GridView>
	</div>
</asp:Content>
