<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TOPFIVEBOWLERS.aspx.cs" Inherits="iccworldcupdbms.TOPFIVEBOWLERS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
        <Columns>
         <asp:BoundField DataField="first_name" HeaderText="FIRST NAME" SortExpression="first_name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="last_name" HeaderText="LAST NAME" SortExpression="last_name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="country" HeaderText="COUNTRY" SortExpression="country" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="bow_rank" HeaderText="BOWLING RAK" SortExpression="bow_rank" ReadOnly="True" HtmlEncode="False" />
          <asp:HyperLinkField  DataNavigateUrlFields="p_id" DataNavigateUrlFormatString="~/playerrecords.aspx?p_id={0}"
          HeaderText="STATISTICS" ItemStyle-Width = "150" Text="PLAYER STATISTICS" />
            </Columns>
</asp:GridView>

</asp:Content>
