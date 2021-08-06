<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="international test.aspx.cs" Inherits="iccworldcupdbms.international_test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<asp:Label ID="Label1" runat="server" ></asp:Label>
    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
         <asp:BoundField DataField="test_bat_rank" HeaderText="BATING RANK" SortExpression="test_bat_rank" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="fifties" HeaderText="FIFTIES" SortExpression="fifties" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="style" HeaderText="STYLE" SortExpression="style" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="runs" HeaderText="RUNS" SortExpression="runs" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="hundreds" HeaderText="HUNDREDS" SortExpression="hundreds" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="fours" HeaderText="FOURS" SortExpression="fours" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="sixes" HeaderText="SIXES" SortExpression="sixes" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="average" HeaderText="AVERAGE" SortExpression="average" ReadOnly="True" HtmlEncode="False" />
           </Columns>
</asp:GridView>

    <asp:Label ID="Label2" runat="server" ></asp:Label>
    <asp:GridView ID="GridView2" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
    <asp:BoundField DataField="test_bow_rank" HeaderText="BOWLING RANK" SortExpression="test_bow_rank" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="best_figure" HeaderText="BEST FIGURE" SortExpression="best_figure" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="runs_conceded" HeaderText="RUNS CONCEDED" SortExpression="runs_conceded" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="wickets" HeaderText="WICKETS" SortExpression="wickets" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="fiveWick" HeaderText="FIVE WICKETS" SortExpression="fiveWick" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="econymy" HeaderText="ECONYMY" SortExpression="econymy" ReadOnly="True" HtmlEncode="False" />
           </Columns>
</asp:GridView>
</asp:Content>
