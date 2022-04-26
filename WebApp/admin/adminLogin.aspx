<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminLogin.aspx.cs" Inherits="admin_adminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Star Admin</title>
  <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css" />
  <link rel="stylesheet" href="node_modules/perfect-scrollbar/dist/css/perfect-scrollbar.min.css" />
  <link rel="stylesheet" href="css/style.css" />
  <link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
     <%--   <video id="herovideo" class="fillWidth hidden-md hidden-xs hidden-sm" width="100%" height="100%" preload="auto" loop="" muted="" autoplay="" poster="/SiteCollectionImages/video-nyn-bg.png">
        <source src="/SiteCollectionImages/navigate-your-next/navigate-your-next.mp4" type="video/mp4">
        
        Your browser does not support HTML5 video. </video>--%>
    <div>
     <div class="container-scroller">
    <div class="container-fluid">
      <div class="row">
        <div class="content-wrapper full-page-wrapper d-flex align-items-center auth-pages">
          <div class="card col-lg-4 mx-auto">
            <div class="card-body px-5 py-5">
              <h3 class="card-title text-left mb-3">Login</h3>
              </div>

                 <div class="form-group">
                  

                </div>

                <div class="form-group">
                  
                    <asp:TextBox ID="txtName" runat="server" class="form-control p_input" placeholder="Username"></asp:TextBox>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Required" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                 
                        <asp:TextBox ID="txtPass" runat="server" class="form-control p_input" 
                            placeholder="Password" TextMode="Password"></asp:TextBox>
                
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Required" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
<%--                <div class="form-group d-flex align-items-center justify-content-between">
                  <div class="form-check"><label><input type="checkbox" class="form-check-input">Remember me</label></div>
                  <a href="#" class="forgot-pass">Forgot password</a>
                </div>--%>
                <div class="text-center">
                  
                            <asp:Button ID="btnSubmit" runat="server" Text="Log In" 
                                class="btn btn-primary btn-block enter-btn" onclick="btnSubmit_Click" />
                </div>
<%--                <p class="Or-login-with my-3">Or login with</p>
                <a href="#" class="facebook-login btn btn-facebook btn-block">Sign in with Facebook</a>
                <a href="#" class="google-login btn btn-google btn-block">Sign in with Google+</a>
                <a href="#" class="google-login btn btn-create-account btn-block">Create An Account</a>--%>
            <%--  </form>--%>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="node_modules/jquery/dist/jquery.min.js"></script>
  <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
  <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
  <script src="node_modules/perfect-scrollbar/dist/js/perfect-scrollbar.jquery.min.js"></script>
  <script src="js/misc.js"></script>
    </div>
    </form>
</body>
</html>
