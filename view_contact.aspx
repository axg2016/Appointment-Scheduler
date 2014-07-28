<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_contact.aspx.cs" Inherits="view_contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <caption style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #800000">
                VIEW CONTACT</caption>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="USERID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="phoneno"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Alternative_email"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Alternative_phno"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
