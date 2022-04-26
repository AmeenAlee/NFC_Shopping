using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlDataAdapter da = null;
    DataSet ds = null;
    string cs = WebConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] == null)
        {
            Response.Redirect("~/admin/Login.aspx");
        }
        conn = new SqlConnection(cs);
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(cs);

        using (SqlCommand cmd = new SqlCommand("select distinct Count(*) as Product_Id_count,tdm.Product_Id,pm.ProductName from  Transaction_Details_Master  tdm  inner join Product_Master pm on tdm.Product_Id=pm.Product_Id where (tdm.DateTime between @startdate and @lastdate) group by tdm.Product_Id,pm.ProductName ", conn))
        {
            cmd.Parameters.AddWithValue("@startdate", start_date.Text);
            cmd.Parameters.AddWithValue("@lastdate", end_date.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count>0)
            {
                this.Chart1.DataSource = dt;
                Chart1.Series[0].XValueMember = "ProductName";
                Chart1.Series[0].YValueMembers = "Product_Id_count";
                Chart1.DataBind();
            }
            else
            {

                Response.Write("<script>alert('Data not found')</script>");
            }


        }

    }
}