<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="playerrecords.aspx.cs" Inherits="iccworldcupdbms.playerrecords" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
            <asp:BoundField DataField="first_name" HeaderText="FIRST NANME" SortExpression="first_name" ReadOnly="True" HtmlEncode="False" />
            <asp:BoundField DataField="last_name" HeaderText="LAST NAME" SortExpression="last_name" ReadOnly="True" />
            <asp:BoundField DataField="country" HeaderText="COUNTRY" SortExpression="country" ReadOnly="True" />
            <asp:BoundField DataField="height" HeaderText="HEIGHT" SortExpression="height" ReadOnly="True" />
            <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" ReadOnly="True" />
            <asp:BoundField DataField="debut_date" HeaderText="DEBUT DATE" SortExpression="debut_date" ReadOnly="True" />
    </Columns>
</asp:GridView>
    <br />
    <br />
  
    <div>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
        <asp:GridView ID="GridView3" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false" Width="366px">
    <Columns>
        <asp:HyperLinkField DataTextField="full_name" DataNavigateUrlFields="T_20s" DataNavigateUrlFormatString="~/international T20.aspx?T_20s={0}"
            HeaderText="INTERNATIONAL T_20 STATS" ItemStyle-Width = "150" />
    </Columns>
</asp:GridView>
	
	<br />
 
        <asp:GridView ID="GridView4" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:HyperLinkField DataTextField="full_name" DataNavigateUrlFields="ODIS" DataNavigateUrlFormatString="~/international odi.aspx?ODIS={0}"
            HeaderText="INTERNATIONAL ODI STATS" ItemStyle-Width = "150" />
    </Columns>
</asp:GridView>

                <asp:GridView ID="GridView5" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:HyperLinkField DataTextField="full_name" DataNavigateUrlFields="tests" DataNavigateUrlFormatString="~/international test.aspx?tests={0}"
            HeaderText="INTERNATIONAL TEST STATS" ItemStyle-Width = "150" />
    </Columns>

</asp:GridView>

                <asp:GridView ID="GridView6" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:HyperLinkField DataTextField="full_name" DataNavigateUrlFields="regions" DataNavigateUrlFormatString="~/regional.aspx?regions={0}"
            HeaderText="REGIONAL STATS" ItemStyle-Width = "150" />
    </Columns>
</asp:GridView>

        <asp:GridView ID="GridView7" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:HyperLinkField DataTextField="full_name" DataNavigateUrlFields="domestics" DataNavigateUrlFormatString="~/domestic.aspx?domestics={0}"
            HeaderText="DOMESTIC STATS" ItemStyle-Width = "150" />
    </Columns>
</asp:GridView>
        
                <asp:GridView ID="GridView8" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:HyperLinkField DataTextField="full_name" DataNavigateUrlFields="p_id" DataNavigateUrlFormatString="~/clubs.aspx?p_id={0}"
            HeaderText="CLUBS STATS" ItemStyle-Width = "150" />
    </Columns>
</asp:GridView>
        <asp:GridView ID="GridView9" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:HyperLinkField DataNavigateUrlFields="p_id" DataNavigateUrlFormatString="~/currentworldcupstats.aspx?p_id={0}"
            HeaderText="WORLD CUP STATS"  ItemStyle-Width = "150" Text="WORLD CUP STATS" />
                <asp:HyperLinkField DataNavigateUrlFields="p_id" DataNavigateUrlFormatString="~/previouworldcup.aspx?p_id={0}"
            HeaderText="PREVIOUS WORLD CUPS PLAYED"  ItemStyle-Width = "150" Text="PREVIOUS WORLD CUPS STATS" />
    </Columns>
</asp:GridView>
	</div>
</asp:Content>
