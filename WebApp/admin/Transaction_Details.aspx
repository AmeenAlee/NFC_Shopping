<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Transaction_Details.aspx.cs" Inherits="admin_Transaction_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="content-wrapper">
     <%--     <h3 class="page-heading mb-4">Manage Employee</h3>--%>

          <div class="card-deck">
            <div class="card col-lg-12 px-0 mb-4">
              <div class="card-body">
                <h5 class="card-title">Transaction Details</h5>
            <%--    <h5 class="card-title"><a href="AddNewCustomer.aspx">Add Customer</a></h5>--%>

                <div class="table-responsive">
                  <table class="table center-aligned-table" width="Auto">
                    <thead>
                      <tr class="text-primary">
                        <th>ProductName</th>
                        <th>Quantity</th>
                        <th>Total_Cost</th>
              
                      </tr>
                    </thead>
         <% if (flag == true)
         {

             foreach (System.Data.DataRow row in dt.Rows)
               
                    { %>
                    <tbody>
                      <tr class="">
                    <td><%=row["ProductName"]%></td>
					<td><%=row["Quantity"]%></td>
					<td><%=row["Total_Cost"]%></td>
                 
        
                      
          
                      </tr>
                      </tbody>
                       <%  }
                                }%>
                        <% else
                            {%>Response.Write("<script>alert('no data found')</script>"); <%}%>
                     
                  </table>
                </div>
               <%--   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
            Width="1000px" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" InsertVisible="False"
                    ReadOnly="True" SortExpression="ProductName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Total_Cost" HeaderText="Total_Cost" SortExpression="Total_Cost">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
           
        </asp:GridView>--%>
    </div>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>"
        SelectCommand="select T.T_Id,T.Datetime,C.PhoneNo,E.EmailId From Customer_Master C JOIN Transaction_Master T on C.C_Id=T.C_Id JOIN Employee_Master E on E.Emp_Id=T.Emp_Id">
    </asp:SqlDataSource>--%>
              </div>
            </div>
          </div>
        </div>
</asp:Content>

