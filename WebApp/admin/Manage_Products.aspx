<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Products.aspx.cs" Inherits="admin_Manage_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-wrapper">
          <h3 class="page-heading mb-4">Manage Product</h3>

          <div class="card-deck">
            <div class="card col-lg-12 px-0 mb-4">
              <div class="card-body">
                <h5 class="card-title">List of Product</h5>
                <h5 class="card-title"><a href="AddNewProduct.aspx">Add New Product</a></h5>
                     <div style="margin-left: 30px; margin-top: 40px;">
       
    &nbsp;<asp:Label ID="lblMessgae" runat="server" Text="Label"></asp:Label>
    </div>
                <div class="table-responsive">
                  <table class="table center-aligned-table" width="Auto">
                    <thead>
                      <tr class="text-primary">
                          <th>Product_Id</th>
                        <th>Name</th>
                        <th>Cost</th>
                        <th>Photo</th>
                     
                        <th>Edit</th>
                          <%-- <th>Delete</th>--%>
                      </tr>
                    </thead>
                      <tr>
                          <td>&nbsp;</td>
                      </tr>
                      <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
        </asp:DropDownList>
                     
                      <br/>
         <% if (flag == true)
         {

             foreach (System.Data.DataRow row in dt.Rows)
               
                    { %>
                    <tbody>
                      <tr class="">
                        <td><%=row["Product_Id"] %></td>  
                    <td><%=row["ProductName"]%></td>
					<td><%=row["Cost"]%></td>
				
                      
                          
                          <td><img alt="image" height='50px' width='50px' src='<%=row["ImagePath"] %>' /></td>
                      
                        <td><a href="AddNewProduct.aspx?Product_Id=<%=row.ItemArray[0]%>&Action=edit" class="btn btn-outline-success btn-sm">Edit</a></td>
                 
                      </tr>
                      </tbody>
                       <%  }
                                }%>
                       <%-- <% else
                            {%>Response.Write("<script>alert('no data found')</script>"); <%}%>--%>
                     
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
</asp:Content>

