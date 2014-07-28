<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delete_appointement.aspx.cs" Inherits="delete_appointement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="app_id" HeaderText="app_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="app_id" />
            <asp:BoundField DataField="appdate" HeaderText="appdate" 
                SortExpression="appdate" />
            <asp:BoundField DataField="apptime" HeaderText="apptime" 
                SortExpression="apptime" />
            <asp:BoundField DataField="apptype" HeaderText="apptype" 
                SortExpression="apptype" />
            <asp:BoundField DataField="location" HeaderText="location" 
                SortExpression="location" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
            <asp:BoundField DataField="cont_id" HeaderText="cont_id" 
                SortExpression="cont_id" />
                <asp:HyperLinkField Text="delete" DataNavigateUrlFields="app_id" DataNavigateUrlFormatString="~/delete.aspx?appid={0}" />
        </Columns>
    </asp:GridView>
    <div>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:appsConnectionString3 %>" 
        SelectCommand="SELECT * FROM [appointment]"></asp:SqlDataSource>
    </form>
</body>
</html>
