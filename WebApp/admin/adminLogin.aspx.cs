using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminLogin : System.Web.UI.Page
{
    string cs = WebConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    SqlConnection conn = null;
    SqlDataAdapter da = null;
    DataSet ds = null;
    //private string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
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
        conn = new SqlConnection(cs);
        da = new SqlDataAdapter("select * from Admin_Login where Username=@Username And Password=@Password", conn);
        da.SelectCommand.Parameters.AddWithValue("@Username", txtName.Text);
        da.SelectCommand.Parameters.AddWithValue("@Password", txtPass.Text);
        ds = new DataSet();
        da.Fill(ds, "Login");
        if (ds.Tables["Login"].Rows.Count > 0)
        {
            string id = ds.Tables["Login"].Rows[0]["Id"].ToString();
            Session["Id"] = id;
         //   Session["Type"] = "Admin";
            Response.Redirect("~/admin/Home.aspx");
        }
        else
        {
            txtPass.Text = "";
            txtName.Text = "";
            txtName.Focus();
            Response.Write("<script>alert('Invalid login')</script>");
        }
    }
}