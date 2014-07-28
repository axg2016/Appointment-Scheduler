<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewall_appointment.aspx.cs" Inherits="viewall_appointment" %>

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
            <asp:BoundField DataField="appdate" HeaderText="appdate" 
                SortExpression="appdate" />
            <asp:BoundField DataField="apptime" HeaderText="apptime" 
                SortExpression="apptime" />
            <asp:BoundField DataField="apptype" HeaderText="apptype" 
                SortExpression="apptype" />
            <asp:BoundField DataField="location" HeaderText="location" 
                SortExpression="location" />
            <asp:BoundField DataField="app_id" HeaderText="app_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="app_id" />
            <asp:BoundField DataField="cont_id" HeaderText="cont_id" 
                SortExpression="cont_id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:appsConnectionString3 %>" 
        SelectCommand="SELECT [appdate], [apptime], [apptype], [location], [app_id], [cont_id] FROM [appointment]">
    </asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
