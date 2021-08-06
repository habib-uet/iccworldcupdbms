<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UMPIRES.aspx.cs" Inherits="iccworldcupdbms.UMPIRES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div>
	
	<br />
		<asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:HyperLinkField DataTextField="umpir_name" DataNavigateUrlFields="umpire_id" DataNavigateUrlFormatString="~/umpirerecord.aspx?umpire_id={0}"
            HeaderText="UMPIRE NAME" ItemStyle-Width = "150" />
    </Columns>
</asp:GridView>
	</div>
</asp:Content>
