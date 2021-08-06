<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="captain.aspx.cs" Inherits="iccworldcupdbms.captain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>

         <asp:BoundField DataField="cap_name" HeaderText="TEAM NAME" SortExpression="cap_name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="years_of_captaincy" HeaderText="COUNTRY" SortExpression="years_of_captaincy" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="total_wins" HeaderText="TEAM RAK" SortExpression="total_wins" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="total_loses" HeaderText="TOTAL BOWLER" SortExpression="total_loses" ReadOnly="True" HtmlEncode="False" />
    </Columns>
        </asp:GridView>
</asp:Content>
