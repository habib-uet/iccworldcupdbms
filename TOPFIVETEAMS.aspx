<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TOPFIVETEAMS.aspx.cs" Inherits="iccworldcupdbms.TOPFIVETEAMS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
        <Columns>
         <asp:BoundField DataField="team_name" HeaderText="TEAM NAME" SortExpression="team_name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="country_name" HeaderText="COUNTRY NAME" SortExpression="country_name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="team_rank" HeaderText="TEAM RANK" SortExpression="team_rank" ReadOnly="True" HtmlEncode="False" />
            </Columns>
</asp:GridView>
</asp:Content>
