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

public partial class forget_password : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string loc_userid = TextBox1.Text;
        con=new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
        con.Open();
        string myquery="select * from app where emailid='"+loc_userid+"' ";
            cmd=new SqlCommand();
        cmd.Connection=con;
        cmd.CommandType=CommandType.Text;
        cmd.CommandText=myquery;
        dr=cmd.ExecuteReader();
        while(dr.Read())
        {
            Label3.Text=dr["hintques"].ToString();
        }



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string loc_hintq = Label3.Text;
        string loc_hintans = TextBox2.Text;
        con=new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
        con.Open();
        string sql1 = "select * from app where hintques='" + loc_hintq + "' and hintans='" + loc_hintans + "' ";
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql1;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label5.Text = dr["password"].ToString();
        }

    }
}
