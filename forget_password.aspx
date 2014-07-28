<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forget_password.aspx.cs" Inherits="forget_password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="userid"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Hintques"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="hintans"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="submit" />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
