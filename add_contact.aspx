<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_contact.aspx.cs" Inherits="add_contact" %>

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
            width: 246px;
        }
        .style3
        {
            width: 382px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <caption style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #800000">
                ADD CONTACT</caption>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Phoneno"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Alternative_Email"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label7" runat="server" Text="Alternative_phoneno"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="style3">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" />
                </td>
                <td class="style3">
                    <asp:Button ID="Button2" runat="server" Text="reset" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
