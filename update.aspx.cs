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
public partial class update : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string loc_uid = TextBox8.Text;

        con = new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
        con.Open();
        string sql = "select * from contact where emailid='" + loc_uid + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = sql;

        TextBox9.Text = dt.Rows[0]["name"].ToString();
        TextBox2.Text = dt.Rows[0]["phone_no"].ToString();
        TextBox3.Text = dt.Rows[0]["emailid"].ToString();
        TextBox4.Text = dt.Rows[0]["alternative_emailid"].ToString();
        TextBox6.Text = dt.Rows[0]["alternative_phoneno"].ToString();
        RadioButtonList1.Text = dt.Rows[0]["gender"].ToString();
        TextBox5.Text = dt.Rows[0]["address"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string loc_uid = TextBox8.Text;
        string loc_name = TextBox9.Text;
        string loc_phno = TextBox2.Text;
        string loc_aemail = TextBox3.Text;
        string loc_aphno = TextBox4.Text;
        string loc_gen = RadioButtonList1.Text;
        string loc_add = TextBox5.Text;
        con = new SqlConnection();
        con=new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
        con.Open();
        string myquery = "update contact set name='" + loc_name + "',phone_no='" + loc_phno + "',alternative_emailid='" + loc_aemail + "',alternative_phoneno='" + loc_aphno + "',gender='" + loc_gen + "',address='" + loc_add + "' where emailid='"+loc_uid+"'";
 

        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = myquery;
        cmd.ExecuteNonQuery();
        
    }
}
