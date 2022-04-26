<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Sales_History.aspx.cs" Inherits="admin_Sales_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-wrapper">
          <%--<h3 class="page-heading mb-4">Sales_History</h3>--%>

          <div class="card-deck">
            <div class="card col-lg-12 px-0 mb-4">
              <div class="card-body">
                

                <div class="table-responsive">
                  <table class="table center-aligned-table" width="Auto">
                    <thead>
                      <tr class="text-primary">
                        <th>T_Id</th>
                        <th>PhoneNo</th>
                        <th>EmailId</th>
                          <th>DateTime</th>
                      
                   
                        <th>View</th>
                          
                      </tr>
                    </thead>
         <% if (flag == true)
         {

             foreach (System.Data.DataRow row in dt.Rows)
               
                    { %>
                    <tbody>
                      <tr class="">
                    <td><%=row["T_Id"]%></td>
					<td><%=row["PhoneNo"]%></td>
					<td><%=row["EmailId"]%></td>
                    <td><%=row["DateTime"]%></td>
					
                          
                      
                      
                        <td><a href="Transaction_Details.aspx?T_Id=<%=row.ItemArray[0]%>&Action=edit" class="btn btn-outline-success btn-sm">View</a></td>
                
                      </tr>
                      </tbody>
                       <%  }
                                }%>
                        <% else
                            {%>Response.Write("<script>alert('no data found')</script>"); <%}%>
                     
                  </table>
                </div>
                   <%--  <div style="margin-left: 30px; margin-top: 40px; margin-bottom: 40px; margin-bottom: 20%">--%>
    <%--    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
            Width="1000px" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="T_Id" HeaderText="T_Id" InsertVisible="False" ReadOnly="True"
                    SortExpression="T_Id">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="PhoneNo" HeaderText="Customer PhoneNo" SortExpression="PhoneNo">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="EmailId" HeaderText="Employee EmailId" SortExpression="EmailId">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="DateTime" HeaderText="DateTime" SortExpression="DateTime">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="T_Id" DataNavigateUrlFormatString="Transaction_Details.aspx?Action=edit&amp;T_Id={0}"
                    HeaderText="Action" Text="View">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:HyperLinkField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
      
        </asp:GridView>--%>
   <%-- </div>--%>
   <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>"
        SelectCommand="select T.T_Id,T.Datetime,C.PhoneNo,E.EmailId From Customer_Master C JOIN Transaction_Master T on C.C_Id=T.C_Id JOIN Employee_Master E on E.Emp_Id=T.Emp_Id"></asp:SqlDataSource>--%>

              </div>
            </div>
          </div>
        </div>
</asp:Content>

