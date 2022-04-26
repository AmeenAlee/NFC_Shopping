using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Manage_Employees : System.Web.UI.Page
{
    string cs = WebConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    SqlConnection conn = null;
    protected static bool flag;
    protected static DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(cs);
        dt = new DataTable();
        if (Session["id"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
        SqlCommand cmd = new SqlCommand("select Emp_Id,EmpName,Address,PhoneNo,EmailId,Password from Employee_Master", conn);
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {
            sda.Fill(dt);
        }
        if (dt.Rows.Count > 0)
        {
            flag = true;
        }
        
    }
}