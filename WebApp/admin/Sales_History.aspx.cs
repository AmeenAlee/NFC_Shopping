using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Sales_History : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlDataAdapter da = null;
    DataSet ds = null;
    public DataTable dt = null;
    string cs = WebConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    protected static bool flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
        SqlConnection conn = new SqlConnection(cs);
        dt = new DataTable();
        using (SqlCommand cmd = new SqlCommand("select T.T_Id,T.Datetime,C.PhoneNo,E.EmailId From Customer_Master C JOIN Transaction_Master T on C.C_Id=T.C_Id JOIN Employee_Master E on E.Emp_Id=T.Emp_Id", conn))
        {

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
}