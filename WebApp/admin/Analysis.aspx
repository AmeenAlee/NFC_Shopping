<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Analysis.aspx.cs" Inherits="admin_Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <div class="content-wrapper">
          <h3 class="page-heading mb-4">Analysis</h3>
          <div class="card-deck">
            <div class="card col-lg-12 px-0 mb-4">
              <div class="card-body">
                <%--<h5 class="card-title">List of Courses</h5>--%>
                <%--<h5 class="card-title"><a href="addEmployee.aspx">Add Employee</a></h5>--%>
                     <%-- <div class="form-group">
                      <label for="exampleInputPassword1">Employee List</label>
                          <asp:DropDownList ID="Employee_List" class="btn btn-secondary dropdown-toggle" runat="server" Height="35px" Width="100%"></asp:DropDownList>
                      
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="a"
                            ErrorMessage="Required" ControlToValidate="Employee_List" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>--%>
                       <div class="form-group">
                      <label for="exampleInputPassword1">Start Date</label>
                              <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></cc1:ToolkitScriptManager>      
                      &nbsp;<asp:TextBox ID="start_date" runat="server" class="form-control p-input"
                                 placeholder="Start_Date" Columns="50" Rows="5"></asp:TextBox>
                                          <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="start_date" ></cc1:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="a"
                            ErrorMessage="Required" ControlToValidate="start_date" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                    </div>
                       <div class="form-group">
                      <label for="exampleInputPassword1">End Date</label>    
                      &nbsp;<asp:TextBox ID="end_date" runat="server" class="form-control p-input"
                                 placeholder="End_Date" Columns="50" Rows="5"></asp:TextBox>
                                          <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="end_date" ></cc1:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="a"
                            ErrorMessage="Required" ControlToValidate="end_date" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                    </div>
                   <div class="form-group"> 
                      
                            <asp:Button ID="Button1" runat="server" Text="Submit"  ValidationGroup="a" class="btn btn-primary" OnClick="Button1_Click" 
                             />&nbsp;&nbsp;
                       <%-- <asp:Button ID="btnUpdate" runat="server" Text="Update"  ValidationGroup="a" class="btn btn-primary" OnClick="btnUpdate_Click" 
                                />--%>
                    </div>
         <asp:Chart ID="Chart1" runat="server">
                  <Series>
                      <asp:Series Name="Series1"></asp:Series>
                  </Series>
                  <ChartAreas>
                      <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                  </ChartAreas>
              </asp:Chart>
              </div>
            </div>
          </div>
        </div>

</asp:Content>

