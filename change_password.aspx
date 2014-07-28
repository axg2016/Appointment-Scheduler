<%@ Page Language="C#" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="change_password" %>

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
            width: 255px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <caption style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #800000">
            Change password</caption>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="old_password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="New_password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="CompareValidator"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="confirm_password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
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
    <div>
    
    </div>
    </form>
</body>
</html>
