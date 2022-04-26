using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    private string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    //public int countEmployee;
    //public int countCustomer;
    //public int countProduct;
    //public int countplacecom;
    //public int countexam;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["id"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }

        //---startoldcode---
       // SqlConnection conn = new SqlConnection(cs);
       // SqlDataAdapter da = new SqlDataAdapter(new SqlCommand("select count(C_Id)as countC from Customer_Master;select count(Emp_Id) as countE from Employee_Master;select count(Product_Id)as countP from Product_Master", conn));

       // DataSet ds = new DataSet();
       // da.Fill(ds);
       // countEmployee = (int)(ds.Tables[0].Rows[0]["countE"]);
       // countCustomer = (int)(ds.Tables[1].Rows[0]["countC"]);

       //countProduct = (int)(ds.Tables[2].Rows[0]["countP"]);
        //countplacecom = (int)(ds.Tables[3].Rows[0]["countplacecom"]);
        //countexam = (int)(ds.Tables[4].Rows[0]["countexam"]);

        //----endoldcode---

        //SqlConnection conn = new SqlConnection(cs);
        //SqlDataAdapter da = new SqlDataAdapter(new SqlCommand("select count(Emp_Id) as countemployee from Employee_Master", conn));
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //countEmployee = (int)(dt.Rows[0]["countemployee"]);

        ////SqlConnection conn = new SqlConnection(cs);
        //SqlDataAdapter da1 = new SqlDataAdapter(new SqlCommand("select count(C_Id) as C_Id from Customer_Master", conn));
        //DataTable dt1 = new DataTable();
        //da1.Fill(dt1);
        //countCustomer = (int)(dt.Rows[0]["C_Id"]);

        ////SqlConnection conn = new SqlConnection(cs);
        //SqlDataAdapter da2 = new SqlDataAdapter(new SqlCommand("select count(Product_Id) as countProduct from Product_Master", conn));
        //DataTable dt2 = new DataTable();
        //da2.Fill(dt2);
        //countProduct = (int)(dt.Rows[0]["countProduct"]);

    }
}