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

public partial class add_appointment : System.Web.UI.Page
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
        string sql = DropDownList1.Text;
        
       cmd = new SqlCommand();
       cmd.Connection = con;
       cmd.CommandType = CommandType.Text;
       if (sql == "Existing_contact")
       {
           Response.Redirect("add_appointment1.aspx");
       }
       else
       {
           Response.Redirect("add_appointment2.aspx?cont_id=0");
       }

       

       
    }
}
