<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="clubsteam.aspx.cs" Inherits="iccworldcupdbms.clubsteam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<asp:Label ID="Label1" runat="server" ></asp:Label>        
  <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
        <Columns>
         <asp:BoundField DataField="team_name" HeaderText="TEAM NAME" SortExpression="team_name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="country_name" HeaderText="COUNTRY" SortExpression="country_name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="team_rank" HeaderText="REGIOAL RANK" SortExpression="team_rank" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="no_of_bowlers" HeaderText="TOTAL BOWLERS" SortExpression="no_of_bowlers" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="no_of_batsmans" HeaderText="TOTAL BATSMANS" SortExpression="no_of_batsmans" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="no_of_wins" HeaderText="TOTAL WINS" SortExpression="no_of_wins" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="no_of_loses" HeaderText="TOTAL LOSES" SortExpression="no_of_loses" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="no_of_draws" HeaderText="TOTAL DRAWS" SortExpression="no_of_draws" ReadOnly="True" HtmlEncode="False" />
          <asp:HyperLinkField  DataNavigateUrlFields="cap_id" DataNavigateUrlFormatString="~/captain.aspx?cap_id={0}"
          HeaderText="CAPTAIN" ItemStyle-Width = "150" Text="CAPTAIN" />
          <asp:HyperLinkField  DataNavigateUrlFields="wicketkeeper_id" DataNavigateUrlFormatString="~/wicketkeeper.aspx?wicketkeeper_id={0}"
           HeaderText="WICKET KEEPER" ItemStyle-Width = "150"  Text="WICKETKEEPER"/>
           </Columns>
</asp:GridView>
</asp:Content>
