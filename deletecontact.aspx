<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deletecontact.aspx.cs" Inherits="deletecontact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 373px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <caption style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #800000">
            DELETE CONTACT</caption>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="userid"></asp:Label>
                <br />
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
