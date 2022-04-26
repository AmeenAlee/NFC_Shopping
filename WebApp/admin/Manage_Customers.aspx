<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Customers.aspx.cs" Inherits="admin_Manage_Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-wrapper">
          <h3 class="page-heading mb-4">Manage Customer</h3>

          <div class="card-deck">
            <div class="card col-lg-12 px-0 mb-4">
              <div class="card-body">
                <h5 class="card-title">List of Customer</h5>
                <h5 class="card-title"><a href="AddNewCustomer.aspx">Add Customer</a></h5>

                <div class="table-responsive">
                  <table class="table center-aligned-table" width="Auto">
                    <thead>
                      <tr class="text-primary">
                          <th>C_Id</th>
                        <th>CustName</th>
                        <th>Address</th>
                        <th>PhoneNo</th>
                          <th>EmailId</th>
                        <th>Balance</th>
                      <%--  <th>Password</th>--%>
                       <%-- <th>Department</th>--%>
                       <%-- <th>Designation</th>--%>
                         <%-- <th>Manager Name</th>
                          <th>Project Name</th>--%>
                          <%--<th>Date of joining</th>     --%>
                       <%-- <th>Location</th>--%>
                        <%--  <th>Photo</th>--%>
                        <th>Edit</th>
                          
                      </tr>
                    </thead>
         <% if (flag == true)
         {

             foreach (System.Data.DataRow row in dt.Rows)
               
                    { %>
                    <tbody>
                      <tr class="">
                            <td><%=row["C_Id"]%></td>
                    <td><%=row["CustName"]%></td>
					<td><%=row["Address"]%></td>
					<td><%=row["PhoneNo"]%></td>
                    <td><%=row["EmailId"]%></td>
					<td><%=row["Balance"]%></td>
                
                      
                          
                       
                      
                        <td><a href="AddNewCustomer.aspx?C_Id=<%=row.ItemArray[0]%>&Action=edit" class="btn btn-outline-success btn-sm">Edit</a></td>
                      
                      </tr>
                      </tbody>
                       <%  }
                                }%>
                        <% else
                            {%>Response.Write("<script>alert('no data found')</script>"); <%}%>
                     
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
</asp:Content>

