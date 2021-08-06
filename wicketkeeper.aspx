<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wicketkeeper.aspx.cs" Inherits="iccworldcupdbms.wicketkeeper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
         <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="wk_rank" HeaderText="WICKET KEEPER RANK" SortExpression="wk_rank" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="style" HeaderText="KEPING STYLE" SortExpression="style" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="no_of_stumps" HeaderText="TOTAL STUMPS" SortExpression="no_of_stumps" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="no_of_catches" HeaderText="TOTAL CATCHES" SortExpression="no_of_catches" ReadOnly="True" HtmlEncode="False" />
    </Columns>
        </asp:GridView>
</asp:Content>
