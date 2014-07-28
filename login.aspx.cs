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

public partial class login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adpt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string loc_userid = TextBox1.Text;
        string loc_pwd = TextBox2.Text;
        SqlConnection con = new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
        string sql = "select * from app where emailid ='" + loc_userid + "' and password='" + loc_pwd + "' ";
        SqlDataAdapter adpt = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["UserName"] = loc_userid;
            Response.Redirect("user.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}
