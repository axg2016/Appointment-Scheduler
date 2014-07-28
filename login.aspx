<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 127%;
            height: 406px;
            background-image: url('App_Data/3-d-220v.jpg');
        }
        .style8
        {
            height: 7px;
            width: 136px;
        }
        .style9
        {
            height: 7px;
            width: 478px;
        }
        .style10
        {
            height: 25px;
        }
        .style11
        {
            height: 2px;
            width: 136px;
        }
        .style12
        {
            height: 2px;
            width: 478px;
        }
        .style13
        {
            height: 2px;
            width: 268px;
        }
        .style14
        {
            height: 7px;
            width: 268px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <caption style="color: #FF00FF; font-size: xx-large; text-decoration: underline;">
                APPOINTMENT SCHEDULE</caption>
            <tr>
                <td class="style10" colspan="3" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; color: #800000">
                    LOGIN</td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Label1" runat="server" Text="Userid"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/reg_form.aspx">NEWUSER</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
                <td class="style14">
                    <asp:Button ID="Button2" runat="server" Text="Reset" />
                </td>
                <td class="style9">
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        PostBackUrl="~/forget_password.aspx">Forget_password</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
