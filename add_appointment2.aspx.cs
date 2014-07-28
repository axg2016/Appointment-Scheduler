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

public partial class add_appointment2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string contid = Request.QueryString["cont_id"].ToString();
            con = new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
            con.Open();
            string loc_cid = TextBox15.Text;
            string loc_name = TextBox8.Text;
            string loc_phoneno = TextBox9.Text;
            string loc_email = TextBox10.Text;
            string loc_aemail = TextBox11.Text;
            string loc_aphno = TextBox12.Text;
            string loc_gender = TextBox13.Text;
            string loc_address = TextBox14.Text;
            string sql = "select * from contact where cont_id='" + cont_id + "' ";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;

            TextBox15.Text = dt.Rows[0]["cont_id"].ToString();
                TextBox8.Text = dt.Rows[0]["name"].ToString();
                TextBox9.Text = dt.Rows[0]["phone_no"].ToString();
                TextBox10.Text = dt.Rows[0]["emailid"].ToString();
                TextBox11.Text = dt.Rows[0]["alternative_emailid"].ToString();
                TextBox12.Text = dt.Rows[0]["alternative_phoneno"].ToString();
                TextBox13.Text = dt.Rows[0]["gender"].ToString();
                TextBox14.Text = dt.Rows[0]["address"].ToString();
            

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cont_id = Request.QueryString["cont_id"].ToString();
        con = new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
        con.Open();
        string loc_appdate = DropDownList1.Text + "/" + DropDownList2.Text + "/" + DropDownList3.Text;
        string loc_apptime = DropDownList4.Text + "-" + DropDownList5.Text + "-" + DropDownList6.Text;
        string loc_apptype = DropDownList7.Text;
        string loc_location = TextBox4.Text;
        string loc_des = TextBox5.Text;
       // string loc_cid = TextBox6.Text;
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "insert into appointment values('" + loc_appdate + "','" + loc_apptime + "','" + loc_apptype + "','" + loc_location + "','" + loc_des + "')";


        cmd.ExecuteNonQuery();
       // Response.Redirect("add_appointment2.aspx");


    }
   
}
