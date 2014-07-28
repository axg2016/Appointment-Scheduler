using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class add_contact : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
        con.Open();
        string loc_name = TextBox1.Text;
        string loc_phno = TextBox2.Text;
        string loc_email = TextBox3.Text;
        string loc_aemail = TextBox4.Text;
        string loc_aphno = TextBox6.Text;
        string loc_gender = RadioButtonList1.Text;
        string loc_add = TextBox5.Text;
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "insert into contact values('" + loc_name + "','" + loc_phno + "','" + loc_email + "','" + loc_aemail + "','"+loc_aphno+"','" + loc_gender + "','" + loc_add + "')";

        cmd.ExecuteNonQuery();
        Response.Redirect("add_contact.aspx");

    }
}
