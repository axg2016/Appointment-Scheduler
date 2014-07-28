<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modify.aspx.cs" Inherits="modify" %>

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
        <tr>
            <td colspan="2" 
                style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                Appointment Details:</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:Label ID="Label15" runat="server" ForeColor="Black" 
                    Text="Appointment_Date"></asp:Label>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:Label ID="Label16" runat="server" ForeColor="Black" 
                    Text="appointment_time"></asp:Label>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:TextBox ID="txttime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:Label ID="Label17" runat="server" ForeColor="Black" 
                    Text="Appointment_type"></asp:Label>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem>official</asp:ListItem>
                    <asp:ListItem>personal</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:Label ID="Label18" runat="server" ForeColor="Black" Text="location"></asp:Label>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:Label ID="Label19" runat="server" ForeColor="Black" Text="Description"></asp:Label>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:TextBox ID="TextBox5" runat="server" Height="47px" Width="144px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                &nbsp;</td>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="height: 26px" Text="submit" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="reset" />
            </td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
