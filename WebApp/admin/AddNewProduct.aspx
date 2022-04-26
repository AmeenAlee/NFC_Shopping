<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddNewProduct.aspx.cs" Inherits="admin_AddNewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>

    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/jquery-2.1.1.js" type="text/javascript"></script>--%>

    
   
   <%-- <script type="text/javascript">
        var chkvalue = "";
        
       
        function showimg() {
            debugger;
           var showimage = document.querySelector('#<%=Image1.ClientID %>');
             var file = document.querySelector('#<%=FileUpload1.ClientID%>').files[0];

            var reader = new window.FileReader();

             reader.onload = function () {
                 showimage.src = reader.result;
                 
             }
             if (file) {
                 //reader.readasdataurl(file);
                 reader.readAsDataURL(file);
                 
             }
             else {
                 showimage.src = "";
             }
         }

     
            function UncheckOthers(objchkbox) {
                debugger;
                var hiddenid = document.getElementById('hiddenchk');
                var objchkList = objchkbox.parentNode.parentNode.parentNode;
              
                var chkboxControls = objchkList.getElementsByTagName("input");
              
                for (var i = 0; i < chkboxControls.length; i++) {
                 
                    if (chkboxControls[i] != objchkbox && objchkbox.checked)
                    {
                    
                        chkboxControls[i].checked = false;
                        chkvalue = objchkbox.value;
                        hiddenid.value = chkvalue;
                    }

                }
            }

          
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class=" container-scroller" style="width:100%">
    <div class="container-fluid">
      <div class="row row-offcanvas row-offcanvas-right">
        <div class="content-wrapper">
          <h3 class="page-heading mb-4">Manage Product</h3>
          <div class="row mb-2">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title mb-4">Add New Product</h5>
                
             <asp:hiddenfield ID="hiddenchk" runat="server" />
                    <div class="from-group">
                           <%if (Request.QueryString["Action"] == "edit")
                { %>
            <tr>
                <td class="style2">&nbsp;
                </td>
             
                <td>&nbsp;
                </td>
            </tr>
            <%} %>
                    </div>
                    <div class="form-group">
         
                      <label for="exampleInputEmail1">category</label><br>
                       <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="260px">
                    </asp:DropDownList>
                      
                    <div class="form-group">
         
                      <label for="exampleInputEmail1">Product Name</label>
                      <asp:TextBox ID="txtProductName" runat="server" class="form-control p-input" placeholder="Name"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Required" ControlToValidate="txtProductName" ForeColor="Red" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtProductName" Display="Dynamic" ErrorMessage="Invalid Name" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div><%--name--%>
                     
                           <asp:Image ID="Image1" runat="server" Height="50px" Width="100px" />
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="260px" />
                    <div class="form-group">
                      <%if (Request.QueryString["Action"] != "edit")
                        {%>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1"
                        ErrorMessage="Image Required" Display="Dynamic"></asp:RequiredFieldValidator>
                    <%} %>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="FileUpload1" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif|.PNG|.JPEG|.jpeg)$" runat="server" ErrorMessage="Only Images" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div><%--email--%>

                    <div class="form-group">
                      <label for="exampleInputPassword1">Cost</label>
                      <asp:TextBox ID="txtCost" runat="server" class="form-control p-input" placeholder="Cost" TextMode="SingleLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="a"
                            ErrorMessage="Required" ControlToValidate="txtCost" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                        ControlToValidate="txtCost" ErrorMessage="Enter Only number" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    </div>
               
                      
                
                      <div class="form-group">

                   
                        </div>
                    
                      <div class="form-group"> 
                       <asp:Button ID="btnSave" runat="server" Text="Save"  ValidationGroup="a" class="btn btn-primary" OnClick="btnSave_Click"
                               />&nbsp;&nbsp;
                          <asp:Button ID="btnDelete" runat="server" Text="Delete"  ValidationGroup="a" class="btn btn-primary" OnClick="btnDelete_Click"/>&nbsp;&nbsp;
                           <asp:Button ID="btnReset" runat="server" Text="Reset"  ValidationGroup="a" class="btn btn-primary" OnClick="btnReset_Click"
                                />&nbsp;&nbsp;
                          <asp:Button ID="btnBack" runat="server" Text="Back"  ValidationGroup="a" class="btn btn-primary" OnClick="btnBack_Click"
                                />
                    </div>
                            
                           
                  <%--</form>--%>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

      </div>  
</asp:Content>

