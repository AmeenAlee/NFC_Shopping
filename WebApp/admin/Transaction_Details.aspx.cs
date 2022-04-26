using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Transaction_Details : System.Web.UI.Page
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
      //  SqlDataSource1.SelectCommand = "select P.ProductName,TD.Quantity,TD.Total_Cost from Product_Master P JOIN Transaction_Details_Master TD on P.Product_Id=TD.Product_Id where TD.T_Id='" + Convert.ToInt32(Request.QueryString["T_Id"]) + "'";
        //if (!IsPostBack)
        //{
        //    //bindtable();
        //    SqlConnection conn = new SqlConnection(cs);
        //    SqlCommand cmd = new SqlCommand("select P.ProductName,TD.Quantity,TD.Total_Cost from Product_Master P JOIN Transaction_Details_Master TD on P.Product_Id=TD.Product_Id where TD.T_Id='" + Convert.ToInt32(Request.QueryString["T_Id"]) + "'", conn);
        //    //SqlCommand cmd = new SqlCommand("select distinct(p.productname),b.quantity,b.total_cost from product_master as p inner join (select *   from Transaction_Details_Master  where product_id=1 and c_id=1)as b on p.product_id=b.product_id");
        //    SqlDataAdapter adp = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    adp.Fill(dt);
        //    if (dt.Rows.Count > 0)
        //    {
        //        flag = true;
        //    }
        //}

        if(!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("select P.ProductName,TD.Quantity,TD.Total_Cost from Product_Master P JOIN Transaction_Details_Master TD on P.Product_Id=TD.Product_Id where TD.T_Id='" + Convert.ToInt32(Request.QueryString["T_Id"]) + "'", conn);
          
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
             dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                flag = true;
            }
    }
    }

    //public void bindtable()
    //{
    //    SqlConnection conn = new SqlConnection(cs);
    //    SqlCommand cmd = new SqlCommand("select P.ProductName,TD.Quantity,TD.Total_Cost from Product_Master P JOIN Transaction_Details_Master TD on P.Product_Id=TD.Product_Id where TD.T_Id='" + Convert.ToInt32(Request.QueryString["T_Id"]) + "'", conn);
    //    //SqlCommand cmd = new SqlCommand("select distinct(p.productname),b.quantity,b.total_cost from product_master as p inner join (select *   from Transaction_Details_Master  where product_id=1 and c_id=1)as b on p.product_id=b.product_id");
    //    SqlDataAdapter adp=new SqlDataAdapter(cmd);
    //    DataTable dt=new DataTable();
    //    adp.Fill(dt);
    //    if (dt.Rows.Count > 0)
    //    {
    //        flag = true;
    //    }
    //}
}