using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class employee_EmployeeLogin : System.Web.UI.Page
{
    private string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    Session.Abandon();
        //    Session.Clear();
        //}
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(cs);
        using (SqlCommand cmd = new SqlCommand("select * from Employee_Master where EmailId=@username and Password=@password", con))
        {
            DataTable dt = new DataTable();
            cmd.Parameters.AddWithValue("@username", txtName.Text);
            cmd.Parameters.AddWithValue("@password", txtPass.Text);
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                sda.Fill(dt);
            }
            if (dt.Rows.Count > 0)
            {
                Session["Emp_Id"] = dt.Rows[0]["Emp_Id"].ToString();
                Response.Redirect("~/employee/Home.aspx");
            }

            else
            {
                Response.Write("<script>alert('Invalid login')</script>");
            }
        }
    }
}