<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_appointment1.aspx.cs" Inherits="add_appointment1" %>

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
            <caption style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000">
                Fix Your Appointment with?</caption>
            <tr>
                <td colspan="2" style="font-weight: bold; color: #000000">
                    Contact Person Details:</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Person_name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        >
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;<asp:Button ID="Button2" runat="server" Text="submit" 
                        onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Reset" />
&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
