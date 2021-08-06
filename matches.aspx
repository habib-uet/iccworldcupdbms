<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="matches.aspx.cs" Inherits="iccworldcupdbms.matches" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
         <asp:BoundField DataField="firstteam_name" HeaderText="SECOND TEAM NAME" SortExpression="firstteam_name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="secondteam_name" HeaderText="FIRST TEAM NAME" SortExpression="secondteam_name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="loser" HeaderText="LOSER TEAM" SortExpression="loser" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="match_date" HeaderText="MATCH DATE" SortExpression="match_date" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="matchtime" HeaderText="MATCH TIME" SortExpression="matchtime" ReadOnly="True" HtmlEncode="False" />
          <asp:BoundField DataField="winner" HeaderText="WINNER TEAM" SortExpression="winner" ReadOnly="True" HtmlEncode="False" />
        <asp:HyperLinkField DataTextField="stad_name" DataNavigateUrlFields="stad_id" DataNavigateUrlFormatString="~/stadium.aspx?stad_id={0}"
          HeaderText="STADIUM NAME" ItemStyle-Width = "150" />
          <asp:HyperLinkField DataTextField="refree_name" DataNavigateUrlFields="referee_id" DataNavigateUrlFormatString="~/referee.aspx?referee_id={0}"
           HeaderText="REFREE" ItemStyle-Width = "150" />
          <asp:HyperLinkField  DataNavigateUrlFields="sc_id" DataNavigateUrlFormatString="~/scorecard.aspx?sc_id={0}"
           HeaderText="SCORECARD" ItemStyle-Width = "150" Text="SCORECARD" />
  <asp:HyperLinkField  DataNavigateUrlFields="match_id" DataNavigateUrlFormatString="~/UMPIRES.aspx?match_id={0}"
           HeaderText="MATCH UMPIRES" ItemStyle-Width = "150" Text="UMPIRES" />
  <asp:HyperLinkField  DataNavigateUrlFields="match_id" DataNavigateUrlFormatString="~/commentryby.aspx?match_id={0}"
           HeaderText="MATCH COMMENTATORS " ItemStyle-Width = "150" Text="COMMENTATORS" />
        </Columns>
    </asp:GridView>
</asp:Content>
