<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddNewEmployee.aspx.cs" Inherits="admin_AddNewEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class=" container-scroller" style="width:100%">
    <div class="container-fluid">
      <div class="row row-offcanvas row-offcanvas-right">
        <div class="content-wrapper">
          <h3 class="page-heading mb-4">Manage Employee</h3>
          <div class="row mb-2">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title mb-4">Add New Employee</h5>
                  <%--<form class="forms-sample">--%>

             <asp:hiddenfield ID="hiddenchk" runat="server" />
                    <div class="form-group">
          <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                      <label for="exampleInputEmail1">Employee Name</label>
                      <asp:TextBox ID="txtEmpName" runat="server" class="form-control p-input" placeholder="Name"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Required" ControlToValidate="txtEmpName" ForeColor="Red" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmpName" Display="Dynamic" ErrorMessage="Invalid Name" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div><%--name--%>
                      <div class="form-group">
                     
                           <label for="exampleInputPassword1">Address</label>
                      <asp:TextBox ID="txtAddress" runat="server" class="form-control p-input" placeholder="Address" TextMode="MultiLine" ></asp:TextBox>
                    
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="a"
                            runat="server" ErrorMessage="Required" ControlToValidate="txtAddress"  ForeColor="Red"></asp:RequiredFieldValidator>

                    <div class="form-group">
                      <label for="exampleInputEmail1">Contact Number</label>
                      <asp:TextBox ID="txtPhoneNo" runat="server" class="form-control p-input" placeholder="Mobile Number" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="a"
                            ErrorMessage="Required" ControlToValidate="txtPhoneNo" ForeColor="Red"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  
 ControlToValidate ="txtPhoneNo" ErrorMessage="Invalid Contact number"  ForeColor="Red"
 ValidationExpression ="[0-9]{10}">

                        </asp:RegularExpressionValidator>


                    </div><%--number--%>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Email address</label><br/>
                      <asp:TextBox ID="txtEmailId" runat="server" class="form-control p-input" placeholder="Email Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="a"
                            ErrorMessage="Required" ControlToValidate="txtEmailId" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtEmailId" ErrorMessage="Invalid Email" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ValidationGroup="a"></asp:RegularExpressionValidator>
                    </div><%--email--%>

                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <asp:TextBox ID="txtPassword" runat="server" class="form-control p-input" placeholder="Password" TextMode="SingleLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="a"
                            ErrorMessage="Required" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Length Should Be max then 6 and less then 12" ValidationExpression="(\s*(\S)\s*){6,}"></asp:RegularExpressionValidator>
                    </div><%--password--%>
                

                      <div class="form-group">

                        </div>
                    
                      <div class="form-group"> 
                       <asp:Button ID="btnSave" runat="server" Text="Save"  ValidationGroup="a" class="btn btn-primary" OnClick="btnSave_Click"
                               />&nbsp;&nbsp;
                          <asp:Button ID="btnDelete" runat="server" Text="Delete"  ValidationGroup="a" class="btn btn-primary" OnClick="btnDelete_Click"
                                />&nbsp;&nbsp;
                          <asp:Button ID="btnReset" runat="server" Text="Reset"  ValidationGroup="a" class="btn btn-primary" OnClick="btnReset_Click"
                                />&nbsp;&nbsp;
                          <asp:Button ID="btnBack" runat="server" Text="Back"  ValidationGroup="a" class="btn btn-primary" OnClick="btnBack_Click"
                                />
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

