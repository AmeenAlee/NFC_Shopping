using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.IO;

namespace NFC_Shopping_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    public class Service1 : IService1
    {
        SqlConnection conn = null;
        SqlDataAdapter da = null;
        DataSet ds,ds2,ds3 = null;
        string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        public RespMsg register(UserData udata)
        {
            try
            {
                conn = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("select * from Customer_Master where PhoneNo=@contact", conn);
                cmd.Parameters.AddWithValue("@contact", udata.contact);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    return new RespMsg
                    {
                        msg = "Exist"
                    };
                }
                else
                {
                    string acc_bal = "0";

                    conn = new SqlConnection(cs);
                    cmd = new SqlCommand("insert into Customer_Master(CustName,Address,PhoneNo,EmailId,Balance,Password) values (@name,@address,@contact,@email,@acc_bal,@pass)", conn);
                    cmd.Parameters.AddWithValue("@name", udata.name);
                    cmd.Parameters.AddWithValue("@address", udata.address);
                    cmd.Parameters.AddWithValue("@contact", udata.contact);
                    cmd.Parameters.AddWithValue("@email", udata.email);
                    cmd.Parameters.AddWithValue("@acc_bal", acc_bal);
                    cmd.Parameters.AddWithValue("@pass", udata.password);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();

                    return new RespMsg
                    {
                        msg = "Inserted"
                    };
                }
            }
            catch (Exception e)
            {
                return new RespMsg
                {
                    msg = e.StackTrace.ToString()
                };
            }
        }

        public ResponseLogin Login(string phoneno, string password)
        {
            conn = new SqlConnection(cs);
            da = new SqlDataAdapter("select * from Customer_Master where PhoneNo=@phoneno and Password=@password", conn);
            da.SelectCommand.Parameters.AddWithValue("@phoneno", phoneno);
            da.SelectCommand.Parameters.AddWithValue("@password", password);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return new ResponseLogin
                {
                    C_Id = Convert.ToInt32(ds.Tables[0].Rows[0]["C_Id"]),
                    CustName = ds.Tables[0].Rows[0]["CustName"].ToString(),
                    Balance = ds.Tables[0].Rows[0]["Balance"].ToString()
                };
            }
            else
            {
                return new ResponseLogin();
            }
        }

        public ResponseGetProductDetails GetProductDetails(string C_Id, string Product_Id)
        {
            conn = new SqlConnection(cs);
            da = new SqlDataAdapter("select * from Temp_Cart where C_Id=@C_Id and Product_Id=@Product_Id;select * from Product_Master where Product_Id=@Product_Id", conn);
            da.SelectCommand.Parameters.AddWithValue("@C_Id",Convert.ToInt32(C_Id));
            da.SelectCommand.Parameters.AddWithValue("@Product_Id", Convert.ToInt32(Product_Id));
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return new ResponseGetProductDetails
                {
                    Product_Id=Product_Id,
                    ProductName = ds.Tables[1].Rows[0]["ProductName"].ToString(),
                    Cost = ds.Tables[1].Rows[0]["Cost"].ToString(),
                    ImagePath = ds.Tables[1].Rows[0]["ImagePath"].ToString(),
                    Quantity = ds.Tables[0].Rows[0]["Quantity"].ToString(),
                };
            }
            else
            {
                return new ResponseGetProductDetails
                {
                    Product_Id = Product_Id,
                    ProductName = ds.Tables[1].Rows[0]["ProductName"].ToString(),
                    Cost = ds.Tables[1].Rows[0]["Cost"].ToString(),
                    ImagePath = ds.Tables[1].Rows[0]["ImagePath"].ToString(),
                    Quantity="1"
                };
            }
            
        }

        public ResponseAddToCart AddToCart(string C_Id, string Product_Id, string Quantity)
        {

            conn = new SqlConnection(cs);
            da = new SqlDataAdapter("select * from  Temp_Cart where C_id=@C_id and Product_Id=@Product_Id", conn);
            da.SelectCommand.Parameters.AddWithValue("@C_Id", Convert.ToInt32(C_Id));
            da.SelectCommand.Parameters.AddWithValue("@Product_Id", Convert.ToInt32(Product_Id));
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                da = new SqlDataAdapter("Update Temp_Cart set Quantity=@Quantity where C_Id=@C_Id and Product_Id=@Product_Id", conn);
                da.SelectCommand.Parameters.AddWithValue("@C_Id", Convert.ToInt32(C_Id));
                da.SelectCommand.Parameters.AddWithValue("@Product_Id", Convert.ToInt32(Product_Id));
                da.SelectCommand.Parameters.AddWithValue("@Quantity", Convert.ToInt32(Quantity));
                conn.Open();
                da.SelectCommand.ExecuteNonQuery();
                conn.Close();

                return new ResponseAddToCart
                {
                    Result="Updated"
                };
            }
            else
            {
                da = new SqlDataAdapter("insert into Temp_Cart values(@C_Id,@Product_Id,@Quantity)", conn);
                da.SelectCommand.Parameters.AddWithValue("@C_Id", Convert.ToInt32(C_Id));
                da.SelectCommand.Parameters.AddWithValue("@Product_Id", Convert.ToInt32(Product_Id));
                da.SelectCommand.Parameters.AddWithValue("@Quantity", Convert.ToInt32(Quantity));
                conn.Open();
                da.SelectCommand.ExecuteNonQuery();
                conn.Close();

                return new ResponseAddToCart
                {
                    Result = "Added"
                };
            }
        }

        public List<ResponseSeeCart> SeeCart(string C_Id)
        {
            List<ResponseSeeCart> lst=new List<ResponseSeeCart>();
            conn=new SqlConnection(cs);
            da = new SqlDataAdapter("Cust_Cart", conn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@cid",C_Id);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string OverallCost = ds.Tables[1].Rows[0]["Total_Cost"].ToString();

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    ResponseSeeCart objresponse = new ResponseSeeCart
                    {
                        Product_Id = ds.Tables[0].Rows[i]["Product_Id"].ToString(),
                        ProductName = ds.Tables[0].Rows[i]["ProductName"].ToString(),
                        ImagePath = ds.Tables[0].Rows[i]["ImagePath"].ToString(),
                        Quantity = ds.Tables[0].Rows[i]["Quantity"].ToString(),
                        Total_Cost = ds.Tables[0].Rows[i]["Total_Cost"].ToString(),
                        OverallCost = OverallCost
                    };
                    lst.Add(objresponse);
                }
                return lst;
            }
            else
            {
                return lst;
            }
        }

        public ResponseDeleteProduct DeleteProduct(string C_Id, string Product_Id)
        {
            conn = new SqlConnection(cs);
            SqlCommand command = new SqlCommand("delete from Temp_Cart where C_Id=@C_Id and Product_Id=@Product_Id", conn);
            command.Parameters.AddWithValue("@C_Id",C_Id);
            command.Parameters.AddWithValue("@Product_Id",Product_Id);
            conn.Open();
            command.ExecuteNonQuery();
            conn.Close();

            return new ResponseDeleteProduct
            {
                Result="Deleted"
            };
            
        }

        public  ResponseForget forgetPassword(string phone_no)
        {
            conn = new SqlConnection(cs);
            da = new SqlDataAdapter("select * from Customer_Master where PhoneNo=@phoneno", conn);
            da.SelectCommand.Parameters.AddWithValue("@phoneno", phone_no);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //WebRequest MyRssRequest2 = WebRequest.Create("https://www.smsgatewayhub.com/api/mt/SendSMS?APIKey=c5a0a9b5-24a5-49b7-9a45-77a9ab765f99&senderid=SMSTST&channel=1&DCS=0&flashsms=0&number=" + phone_no + "&sid=WEBSMS&msg= Your Password for NFC shopping is " + ds.Tables[0].Rows[0]["Password"].ToString() + "&fl=0");
                //WebResponse MyRssResponse2 = MyRssRequest2.GetResponse();
                //Stream MyRssStream2 = MyRssResponse2.GetResponseStream();

                WebRequest MyRssRequest = WebRequest.Create("https://www.smsgatewayhub.com/api/mt/SendSMS?APIKey=c5a0a9b5-24a5-49b7-9a45-77a9ab765f99&senderid=SMSTST&channel=1&DCS=0&flashsms=0&number=" + phone_no + "&text=  Your Password for NFC shopping is " + ds.Tables[0].Rows[0]["Password"].ToString()  + "&route=13");
                WebResponse MyRssResponse = MyRssRequest.GetResponse();
                Stream MyRssStream = MyRssResponse.GetResponseStream();

                //WebRequest MyRssRequest = WebRequest.Create("http://login.smsgatewayhub.com/smsapi/pushsms.aspx?user=chintan&pwd=Passw0rd&to=" + phone_no + "&sid=WEBSMS&msg= Your Password for NFC shopping is " + ds.Tables[0].Rows[0]["Password"].ToString() + "&fl=0");
                //WebResponse MyRssResponse = MyRssRequest.GetResponse();
                //Stream MyRssStream = MyRssResponse.GetResponseStream();
                return new ResponseForget
                {
                    resp="Found"
                };
            }
            else
            {
                return new ResponseForget();
            }
        }

    }
}
