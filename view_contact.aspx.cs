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

public partial class view_contact : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
        con.Open();
        string loc_uid = TextBox1.Text;
        string loc_name = Label8.Text;
        string loc_phno = Label9.Text;
        string loc_aemail=Label10.Text;
        string loc_aphno = Label11.Text;
        string loc_gen = Label12.Text;
        string loc_add = Label13.Text;
        string sql = "select * from contact where emailid='" + loc_uid + "' ";
        cmd=new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label8.Text = dr["name"].ToString();
            Label9.Text = dr["phone_no"].ToString();
            Label10.Text = dr["alternative_emailid"].ToString();
            Label11.Text = dr["alternative_phoneno"].ToString();
            Label12.Text = dr["gender"].ToString();
            Label13.Text = dr["address"].ToString();
        }




    }
}
