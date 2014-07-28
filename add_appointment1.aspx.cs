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

public partial class add_appointment1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adpt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con = new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
            con.Open();
            string sql = "select * from contact";
            SqlDataAdapter adpt = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataTextField = "name";
            DropDownList1.DataValueField = "cont_id";
       
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
        }
    }




    protected void Button2_Click(object sender, EventArgs e)
    {
        string cont_id = DropDownList1.SelectedValue;
        con = new SqlConnection("Data Source=COMPUTER_1\\SQLEXPRESS;Initial Catalog=apps;Integrated Security=True");
        con.Open();
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        Response.Redirect("add_appointment2.aspx?cont_id="+cont_id);

    }
   
}

