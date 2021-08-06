<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="umpirerecord.aspx.cs" Inherits="iccworldcupdbms.umpirerecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
         <Columns>
         <asp:BoundField DataField="umpir_name" HeaderText="UMPIRE NAME" SortExpression="umpir_name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="matches_umpired" HeaderText="MATCHES UMPIRED" SortExpression="matches_umpired" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="country" HeaderText="COUNTRY" SortExpression="country" ReadOnly="True" HtmlEncode="False" />
          </Columns>
         </asp:GridView>
</asp:Content>
