using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Manage_Products : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlDataAdapter da = null;
    DataSet ds, ds1 = null;
    public static DataTable dt;
    protected static bool flag;
    string cs = WebConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }

        if (Request.QueryString["msg"] == "add")
        {
            lblMessgae.Text = "Added Successfully";
        }

        if (Request.QueryString["msg"] == "update")
        {
            lblMessgae.Text = "Updated Successfully";
        }

        if (Request.QueryString["msg"] == "delete")
        {
            lblMessgae.Text = "Deleted Successfully";
        }

        if (!IsPostBack)
        {
            conn = new SqlConnection(cs);
            da = new SqlDataAdapter("select * from Category_Master", conn);
            ds = new DataSet();
            da.Fill(ds, "cats");
            if (ds.Tables["cats"].Rows.Count > 0)
            {
                DropDownList1.DataSource = ds.Tables["cats"];
                DropDownList1.DataValueField = "Cat_Id";
                DropDownList1.DataTextField = "CatName";
                DropDownList1.DataBind();
            }      
        }
    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        conn = new SqlConnection(cs);
        dt = new DataTable();
        if (Session["id"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
        //SqlCommand cmd = new SqlCommand("select Product_Id,ProductName,Cost,ImagePath  from Product_Master where cat_id=@cat", conn);

        SqlCommand cmd = new SqlCommand("select Product_Id,ProductName,Cost,('../'+ImagePath) as ImagePath  from Product_Master where cat_id=@cat", conn);
        cmd.Parameters.AddWithValue("@cat", DropDownList1.SelectedValue);
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {
          sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                flag = true;
            }
        }
    }

}