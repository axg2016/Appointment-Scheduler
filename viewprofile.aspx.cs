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

public partial class viewprofile : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
        con.Open();
        string userid = Session["UserName"].ToString();
        string fname = Label16.Text;
        string lname = Label17.Text;
        string dob = Label18.Text;
        string sex = Label19.Text;
        string emailid = Label20.Text;
        string pwd = Label21.Text;
        string cpwd = Label22.Text;
        string aemail = Label23.Text;
        string phno = Label24.Text;
        string hintq = Label25.Text;
        string hinta = Label26.Text;
        string city = Label27.Text;
        string state = Label28.Text;
        string country = Label29.Text;
        string pincode = Label30.Text;
        string sql = "select * from app where emailid='"+userid+"' ";
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label16.Text = dr["firstname"].ToString();
            Label17.Text = dr["lastname"].ToString();
            Label18.Text = dr["dob"].ToString();
            Label19.Text = dr["sex"].ToString();
            Label20.Text = dr["emailid"].ToString();
            Label21.Text = dr["password"].ToString();
            Label22.Text = dr["confirmpassword"].ToString();
            Label23.Text = dr["alternativeemail"].ToString();
            Label24.Text = dr["mobileno"].ToString();
            Label25.Text = dr["hintques"].ToString();
            Label26.Text = dr["hintans"].ToString();
            Label27.Text = dr["city"].ToString();
            Label28.Text = dr["state"].ToString();
            Label29.Text = dr["country"].ToString();
            Label30.Text = dr["pincode"].ToString();
                   
        }




    }
}
