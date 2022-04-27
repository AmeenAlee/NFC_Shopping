using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace NFC_Shopping_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {

        [OperationContract]
        [WebGet(UriTemplate = "Login/{phoneno}/{password}", ResponseFormat = WebMessageFormat.Json)]
        ResponseLogin Login(string phoneno, string password);

        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "register", BodyStyle = WebMessageBodyStyle.Bare, RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        RespMsg register(UserData udata);

        [OperationContract]
        [WebGet(UriTemplate = "GetProductDetails/{C_Id}/{Product_Id}", ResponseFormat = WebMessageFormat.Json)]
        ResponseGetProductDetails GetProductDetails(string C_Id, string Product_Id);

        [OperationContract]
        [WebGet(UriTemplate = "AddToCart/{C_Id}/{Product_Id}/{Quantity}", ResponseFormat = WebMessageFormat.Json)]
        ResponseAddToCart AddToCart(string C_Id, string Product_Id, string Quantity);

        [OperationContract]
        [WebGet(UriTemplate = "SeeCart/{C_Id}", ResponseFormat = WebMessageFormat.Json)]
        List<ResponseSeeCart> SeeCart(string C_Id);

        [OperationContract]
        [WebGet(UriTemplate = "DeleteProduct/{C_Id}/{Product_Id}", ResponseFormat = WebMessageFormat.Json)]
        ResponseDeleteProduct DeleteProduct(string C_Id, string Product_Id);

        [OperationContract]
        [WebGet(UriTemplate = "forgetPassword/{phone_no}", ResponseFormat = WebMessageFormat.Json)]
        ResponseForget forgetPassword(string phone_no);
    }

    [DataContract]
    public class RespMsg
    {
        [DataMember]
        public string msg { get; set; }
    }

    [DataContract]
    public class UserData
    {
        [DataMember]
        public string name { get; set; }
        [DataMember]
        public string contact { get; set; }
        [DataMember]
        public string address { get; set; }
        [DataMember]
        public string email { get; set; }
        [DataMember]
        public string password { get; set; }
    }

    [DataContract]
    public class ResponseForget
    {
        [DataMember]
        public string resp
        {
            get;
            set;
        }
    }

    [DataContract]
    public class ResponseLogin
    {
        [DataMember]
        public int C_Id
        {
            get;
            set;
        }
        [DataMember]
        public string CustName
        {
            get;
            set;
        }
        [DataMember]
        public string Balance
        {
            get;
            set;
        }

    }

    [DataContract]
    public class ResponseGetProductDetails
    {
        [DataMember]
        public string Product_Id
        {
            get;
            set;
        }
        [DataMember]
        public string ProductName
        {
            get;
            set;
        }
        [DataMember]
        public string Cost
        {
            get;
            set;
        }
        [DataMember]
        public string ImagePath
        {
            get;
            set;
        }
        [DataMember]
        public string Quantity
        {
            get;
            set;
        }


    }

    [DataContract]
    public class ResponseAddToCart
    {
        [DataMember]
        public string Result
        {
            get;
            set;
        }
    }

    [DataContract]
    public class ResponseSeeCart
    {
        [DataMember]
        public string Product_Id
        {
            get;
            set;
        }
        [DataMember]
        public string ProductName
        {
            get;
            set;
        }
        [DataMember]
        public string ImagePath
        {
            get;
            set;
        }
        [DataMember]
        public string Quantity
        {
            get;
            set;
        }
        [DataMember]
        public string Total_Cost
        {
            get;
            set;
        }
        [DataMember]
        public string OverallCost
        {
            get;
            set;
        }


    }

    [DataContract]
    public class ResponseDeleteProduct
    {
        [DataMember]
        public string Result
        {
            get;
            set;
        }
    }
}
