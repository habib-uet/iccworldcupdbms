<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="scorecard.aspx.cs" Inherits="iccworldcupdbms.scorecard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
        <Columns>      
         <asp:BoundField DataField="first_team_runsscored" HeaderText=" TOTAL RUNS" SortExpression="first_team_runsscored" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="first_team_ballsfaced" HeaderText="BALLS FACED" SortExpression="first_team_ballsfaced" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="first_team_sixers" HeaderText="SIXERS" SortExpression="first_team_sixers" ReadOnly="True" HtmlEncode="False" />
        <asp:BoundField DataField="first_team_fours" HeaderText="FOURS" SortExpression="first_team_fours" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="first_team_maidens" HeaderText="MAIDENS" SortExpression="first_team_maidens" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="first_team_totalout" HeaderText="TOTAL OUTS" SortExpression="first_team_totalout" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="first_team_wktstaken" HeaderText="WICKETS TAKEN" SortExpression="first_team_wktstaken" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="first_team_ballsbowled" HeaderText="BALLS BOWLED" SortExpression="first_team_ballsbowled" ReadOnly="True" HtmlEncode="False" />
        </Columns>
        </asp:GridView>

   <br />
<asp:GridView ID="GridView2" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
        <Columns>      
         <asp:BoundField DataField="second_team_runsscored" HeaderText=" TOTAL RUNS" SortExpression="second_team_runsscored" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="second_team_ballsfaced" HeaderText="BALLS FACED" SortExpression="second_team_ballsfaced" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="second_team_sixers" HeaderText="SIXERS" SortExpression="second_team_sixers" ReadOnly="True" HtmlEncode="False" />
        <asp:BoundField DataField="second_team_fours" HeaderText="FOURS" SortExpression="second_team_fours" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="second_team_maidens" HeaderText="MAIDENS" SortExpression="second_team_maidens" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="second_team_totalout" HeaderText="TOTAL OUTS" SortExpression="second_team_totalout" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="second_team_wktstaken" HeaderText="WICKETS TAKEN" SortExpression="second_team_wktstaken" ReadOnly="True" HtmlEncode="False" />
         <asp:BoundField DataField="second_team_ballsbowled" HeaderText="BALLS BOWLED" SortExpression="second_team_ballsbowled" ReadOnly="True" HtmlEncode="False" />
        </Columns>
        </asp:GridView>

</asp:Content>
