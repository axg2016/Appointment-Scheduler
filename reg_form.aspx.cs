using System;
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

public partial class _Default : System.Web.UI.Page 
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
        string loc_fname = TextBox1.Text;
        string loc_lname = TextBox2.Text;
        string loc_dob = DropDownList1.Text + "/" + DropDownList2.Text + "/" + DropDownList3.Text;
        string loc_sex = RadioButtonList1.Text;
        string loc_email = TextBox3.Text;
        string loc_password = TextBox4.Text;
        string loc_cpwd = TextBox5.Text;
        string loc_aemail = TextBox6.Text;
        string loc_phno =TextBox7.Text;
        string loc_hintq = DropDownList4.Text;
        string loc_hinta = TextBox8.Text;
        string loc_city = TextBox9.Text;
        string loc_state = TextBox10.Text;
        string loc_country = TextBox11.Text;
        string loc_pincode = TextBox12.Text;
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into app values('" + loc_fname + "','" + loc_lname + "','" + loc_dob + "','" + loc_sex + "','" + loc_email + "','" + loc_password + "','" + loc_cpwd + "','" + loc_aemail + "','" + loc_phno + "','" + loc_hintq + "','" + loc_hinta + "','" + loc_city + "','" + loc_state + "','" + loc_country + "','" + loc_pincode + "')";
        
       
        cmd.ExecuteNonQuery();
        Response.Redirect("reg_form.aspx");

    }
}
