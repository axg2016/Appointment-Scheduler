<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="reg_form.aspx.cs" Inherits="_Default" %>

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
            width: 248px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="firstname"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="lastname"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="dob"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>jan</asp:ListItem>
                    <asp:ListItem>feb</asp:ListItem>
                    <asp:ListItem>mar</asp:ListItem>
                    <asp:ListItem>apr</asp:ListItem>
                    <asp:ListItem>may</asp:ListItem>
                    <asp:ListItem>june</asp:ListItem>
                    <asp:ListItem>july</asp:ListItem>
                    <asp:ListItem>aug</asp:ListItem>
                    <asp:ListItem>sep</asp:ListItem>
                    <asp:ListItem>oct</asp:ListItem>
                    <asp:ListItem>nov</asp:ListItem>
                    <asp:ListItem>dec</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>90</asp:ListItem>
                    <asp:ListItem>91</asp:ListItem>
                    <asp:ListItem>92</asp:ListItem>
                    <asp:ListItem>93</asp:ListItem>
                    <asp:ListItem>94</asp:ListItem>
                    <asp:ListItem>95</asp:ListItem>
                    <asp:ListItem>96</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="sex"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>male</asp:ListItem>
                    <asp:ListItem>female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="emailid"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="confirmpassword"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" Text="alternativeemail"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" Text="mobileno"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label10" runat="server" Text="hintques"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>wt is ur pet name?</asp:ListItem>
                    <asp:ListItem>wt is ur first phone no?</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label11" runat="server" Text="hintans"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label12" runat="server" Text="city"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label13" runat="server" Text="state"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label14" runat="server" Text="country"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label15" runat="server" Text="pincode"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Reset" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
