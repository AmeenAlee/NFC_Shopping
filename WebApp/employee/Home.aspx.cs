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
    public int countEmployee;
    public int countnotes;
    public int countcommittee;
    public int countplacecom;
    public int countexam;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Emp_Id"] == null)
        {
            Response.Redirect("EmployeeLogin.aspx");
        }

        //---startoldcode---
        //SqlConnection conn = new SqlConnection(cs);
        //SqlDataAdapter da = new SqlDataAdapter(new SqlCommand("select count(sid)as countstudent from student_master;select count(exam_id) as countnotes from notes_master;", conn));
       
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        //countEmployee = (int)(ds.Tables[0].Rows[0]["countstudent"]);
        //countnotes = (int)(ds.Tables[1].Rows[0]["countnotes"]);

        //countcommittee = (int)(ds.Tables[2].Rows[0]["countcommittee"]);
        //countplacecom = (int)(ds.Tables[3].Rows[0]["countplacecom"]);
        //countexam = (int)(ds.Tables[4].Rows[0]["countexam"]);

        //----endoldcode---

        //SqlConnection conn = new SqlConnection(cs);
        //SqlDataAdapter da = new SqlDataAdapter(new SqlCommand("select count(E_id) as countemployee from [Employee_Master]", conn));
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //countEmployee = (int)(dt.Rows[0]["countemployee"]);

    }
}