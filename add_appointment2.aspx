<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_appointment2.aspx.cs" Inherits="add_appointment2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

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
            width: 303px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label20" runat="server" Text="cont_id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="phone_no"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Emailid"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Alternative_emailid"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Alternative_phoneno"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td>
        </tr>
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
&nbsp;&nbsp;
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
&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>2012</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:Label ID="Label16" runat="server" ForeColor="Black" 
                    Text="appointment_time"></asp:Label>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; color: #800000; font-size: medium; font-weight: bold">
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem>am</asp:ListItem>
                    <asp:ListItem>pm</asp:ListItem>
                </asp:DropDownList>
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
    <div>
    
    </div>
    </form>
</body>
</html>
