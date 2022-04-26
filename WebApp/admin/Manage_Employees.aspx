<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Employees.aspx.cs" Inherits="admin_Manage_Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="content-wrapper">
          <h3 class="page-heading mb-4">Manage Employee</h3>

          <div class="card-deck">
            <div class="card col-lg-12 px-0 mb-4">
              <div class="card-body">
                <h5 class="card-title">List of Employee</h5>
                <h5 class="card-title"><a href="AddNewEmployee.aspx">Add Employee</a></h5>

                <div class="table-responsive">
                  <table class="table center-aligned-table" width="Auto">
                    <thead>
                      <tr class="text-primary">
                          <th>E_ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>PhoneNo</th>
                          <th>EmailId</th>
                        <th>Password</th>
                   
                        <th>Edit</th>
                       <%--    <th>Delete</th>--%>
                      </tr>
                    </thead>
         <% if (flag == true)
         {

             foreach (System.Data.DataRow row in dt.Rows)
               
                    { %>
                    <tbody>
                      <tr class="">
                     <td><%=row["Emp_Id"]%></td>
                    <td><%=row["EmpName"]%></td>
					<td><%=row["Address"]%></td>
					<td><%=row["PhoneNo"]%></td>
                    <td><%=row["EmailId"]%></td>
					<td><%=row["Password"]%></td>
             
                      
                          
                          <%--<td><img alt="image" height='50px' width='50px' src='<%=row["Empimage"] %>' /></td>--%>
                      
                        <td><a href="AddNewEmployee.aspx?Emp_Id=<%=row.ItemArray[0]%>&Action=edit" class="btn btn-outline-success btn-sm">Edit</a></td>
                       <%-- <td><a href="Manage_Employees.aspx?Emp_Id=<%=row.ItemArray[0]%>" class="btn btn-outline-danger">Delete</a></td>--%>
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

