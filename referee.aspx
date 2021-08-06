<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="referee.aspx.cs" Inherits="iccworldcupdbms.referee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
        <Columns>
         <asp:BoundField DataField="refree_name" HeaderText="REFEREE NAME" SortExpression="refree_name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="country" HeaderText="COUNTRY" SortExpression="country" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="refered_matches" HeaderText="REFERED MATCHES" SortExpression="refered_matches" ReadOnly="True" HtmlEncode="False" />
         </Columns>
        </asp:GridView>
</asp:Content>
