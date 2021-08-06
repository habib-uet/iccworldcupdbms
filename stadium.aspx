<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="stadium.aspx.cs" Inherits="iccworldcupdbms.stadium" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
        <Columns>
         <asp:BoundField DataField="country" HeaderText="FIFTIES" SortExpression="country" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="capacity" HeaderText="STYLE" SortExpression="capacity" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="stad_name" HeaderText="RUNS" SortExpression="stad_name" ReadOnly="True" HtmlEncode="False" />
         </Columns>
        </asp:GridView>
</asp:Content>
