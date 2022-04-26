using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class admin_Manage_Customers : System.Web.UI.Page
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
            Response.Redirect("~/Login.aspx");
        }

        //if (Request.QueryString["msg"] == "add")
        //{
        //    lblMessgae.Text = "Added Successfully";
        //}

        //if (Request.QueryString["msg"] == "update")
        //{
        //    lblMessgae.Text = "Updated Successfully";
        //}

        //if (Request.QueryString["msg"] == "delete")
        //{
        //    lblMessgae.Text = "Deleted Successfully";
        //}
        SqlConnection conn = new SqlConnection(cs);
        dt = new DataTable();
        using (SqlCommand cmd = new SqlCommand("select C_Id,CustName,Address,PhoneNo,EmailId,Balance from Customer_Master", conn))
        {
            //String ActionS = "SELECT";
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@Action", ActionS);
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