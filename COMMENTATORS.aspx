<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="COMMENTATORS.aspx.cs" Inherits="iccworldcupdbms.COMMENTATORS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
         <Columns>
         <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="country" HeaderText="COUNTRY" SortExpression="country" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" ReadOnly="True" HtmlEncode="False" />
          <asp:BoundField DataField="commentator_matches" HeaderText="TOTAL COMMENTRY MATCHES" SortExpression="commentator_matches" ReadOnly="True" HtmlEncode="False" />
          </Columns>
         </asp:GridView>
</asp:Content>
