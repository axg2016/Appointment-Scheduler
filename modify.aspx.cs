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

public partial class modify : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con = new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
            con.Open();
            string appid = Request.QueryString["appid"].ToString();
            string sql = "select * from appointment where app_id='" + appid + "' ";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = sql;
            txtdate.Text = dt.Rows[0]["appdate"].ToString();
            txttime.Text = dt.Rows[0]["apptime"].ToString();
            DropDownList7.Text = dt.Rows[0]["apptype"].ToString();
            TextBox4.Text = dt.Rows[0]["location"].ToString();
            TextBox5.Text = dt.Rows[0]["description"].ToString();
           // TextBox6.Text = dt.Rows[0]["cont_id"].ToString();
        }

        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       con = new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
        con.Open();
        string appid = Request.QueryString["appid"].ToString();
        string loc_appdate = txtdate.Text;
        string loc_apptime = txttime.Text;
        string loc_apptype = DropDownList7.Text;
        string loc_location = TextBox4.Text;
        string loc_des = TextBox5.Text;
       // string loc_cid = TextBox6.Text;
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update appointment set appdate='" + loc_appdate + "',apptime='" + loc_apptime + "',apptype='" + loc_apptype + "',location='" + loc_location + "',description='" + loc_des + "'where app_id=" + appid + " ";
        cmd.ExecuteNonQuery();
        Response.Redirect("~/modity_appointment.aspx");



    }
}
