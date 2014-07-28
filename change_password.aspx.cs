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
public partial class change_password : System.Web.UI.Page
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
        string userid = Session["UserName"].ToString();
        string loc_oldpwd = TextBox1.Text;
        string loc_newpwd = TextBox2.Text;
        string loc_cpwd = TextBox3.Text;
        string sql = "select * from app where emailid='"+userid+"'and password='"+TextBox1.Text+"'";
        SqlDataAdapter da = new SqlDataAdapter(sql,con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            string sql1 = "update app set password='" + loc_newpwd + "',confirmpassword='" + loc_cpwd + "' where emailid='" + userid + "'";

            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql1;
            cmd.ExecuteReader();
        }
        else
        {
            Response.Write("not correct");
        }
    }
}
