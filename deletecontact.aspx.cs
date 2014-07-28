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

public partial class deletecontact : System.Web.UI.Page
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
        string loc_userid = TextBox1.Text;
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "delete from contact where emailid='" + loc_userid + "' ";


        cmd.ExecuteNonQuery();
    }
}
