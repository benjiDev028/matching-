<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="matching.login" %>

<!DOCTYPE html>
<html lang="en" ng-app="Lavalife" xmlns="http://www.w3.org/1999/xhtml">
  <head  runat="server">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Log In – Lavalife.com Online Dating Site & Mobile Apps – Where Singles Click®</title>
	<meta name="description" content="Welcome back to Lavalife.com! Log in to your online dating profile to see your messages, likes and other notifications now." >
	<meta name="apple-itunes-app" content="app-id=888082770">
    <!-- Styles -->
    <link href="css/finalbuild.css" rel="stylesheet">
    <link href="css/bootstrap-tour.min.css" rel="stylesheet">
    <script src="js/angular.min.js"></script>
    <script src="js/directives.js"></script>
	<script src="js/angulartics.js"></script>
	<script src="js/angulartics-ga.js"></script>
	
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-56667868-1', 'auto');
	  ga('require', 'displayfeatures');
	  ga('send', 'pageview');
	</script>
	
      <style type="text/css">
          .auto-style1 {
              padding: 0px 50px;
              height: 329px;
          }


      </style>
	
  </head>
  <body  ng-controller="LoginController as login">
   	
   	  <form id="form1" runat="server">
   	
   	<!-- Wrap all page content here -->
   	<div id="wrap" >
		<div class="mobile-dl">
			<a href=""><img /></a>
		</div>
   	
   		<a href="./" id="logo-signup" class="visible-lg visible-md visible-sm"></a>
   			    	    
		<nav class="navbar navbar-default visible-xs" role="navigation">
	      	
	        <!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header col-xs-12">
	          
				<button type="button" class="navbar-toggle collapsed col-xs-4" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
	        	
				<a href="./" id="logo" class="navbar-brand"></a>
	        
			</div>
	    
	        <!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse col-xs-12" id="bs-example-navbar-collapse-1" style="margin-top: 10px;">
				<ul class="nav navbar-nav">
					<li><a href="privacy-policy.html" target="_blank">Privacy Policy</a></li>
		            <li><a href="terms-of-use.html" target="_blank">Terms of Service</a></li>
		            <li><a href="FAQ.html" target="_blank">FAQ</a></li>
		          </ul>

			</div><!-- /.navbar-collapse -->
		</nav>
   	
	    <section class="container" style="min-width:300px !important;">
	    	
	    	<div class="row login-holder">
	    		
	    		<div class="col-lg-8r col-md-8 col-sm-8 hidden-xs login-left">
	    		
	    		</div>
	    		    		
	    		<div class="col-lg-4 col-md-4 col-sm-12" id="login">
	    				<div class="lil-logo">
							<img src="images/landing/ll_logo_registration_circle_sml.png" />
	    				</div>
						
	    				<h2>Log in <br /><span>Welcome back to lavalife!</h2>
	    				
	    				<div class="auto-style1">
	    					
	    					<div class="errors-holder">&nbsp;</div>
	    					
								<div class="form-group">
									<label for="interested">Email Address</label>
                                    <asp:TextBox ID="txtCourriel" runat="server" Font-Bold="True"></asp:TextBox>
								</div>
								
								<div class="form-group">
									

									&nbsp;<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
								</div>
								
                            <asp:Button ID="btnLogin" runat="server" Text="LOGIN" BackColor="Red" ForeColor="White" OnClick="btnLogin_Click" />

                            <asp:RequiredFieldValidator ID="ReqCourriel" runat="server" ErrorMessage="remplir email address" ControlToValidate="txtCourriel" ForeColor="Red">
                            </asp:RequiredFieldValidator>&nbsp;<asp:Label ID="lblInfo" runat="server" ForeColor="Red"></asp:Label>
                            <br />
                            <asp:RequiredFieldValidator ID="reqMdp" runat="server" ErrorMessage="remplir password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
							
							
							<%--  --%>
							<div class="devider-line"></div>
							
							<div id="" style="text-align: center; margin-top: 25px; margin-bottom:25px;color:#757575;">Not a member yet? <strong><a href="signup.aspx">Sign Up.</a></strong></div>
						
						</div>
	
	    		</div>
			
			</div>
			
	    </section>
	
	</div>
	
	<div id="footer" class="hidden-sm hidden-xs">
		
		<footer class="container" style="min-width:300px !important;">
			<div class="col-md-1"></div>
			<div class="col-md-2">
				<img style="margin-top:40px;" src="images/landing/ll_logodotcom_footer.png" />
                <br />
			</div>
			
			<div class="col-md-8">
				<p class="terms" style="text-transform:capitalize;">All images design and other intellectual materials and copyrights © 2015 Lavalife Ltd. All Rights Reserved. This is an adult service. By selecting any of the options above and/or creating your Lavalife profile, you are confirming that you are 18 years of age or older. 
				Please be sure you have read and agree to our <a href="privacy-policy.html" target="_blank">Privacy Policy</a> and <a href="terms-of-use.html" target="_blank">Terms of Use</a>.</p>
			</div>
			
			<div class="col-md-1"></div>
		</footer>
		
	</div>
	
	<div id="fb-root"></div>
	
	<div class="modal fade" id="reactivate-modal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true" style="display: none;">
		<div class="modal-dialog big">
			<div class="modal-content standard-popup">
				<h3 style="color:#212121;font-weight:600;">Reactivate My Account</h4>
				<div class="row">		
					<div class="col-xs-12">
						<p>Your account is currently deactivated. If you wish to restore your profile and return to Lavalife.com now, please click the “Reactivate” button below. We’d be thrilled to welcome you back!</p>
					</div>
				</div>
				
				<div class="row">
					<div class="col-xs-1"></div>
					<div class="col-xs-10">
						<div class="col-xs-4"></div>
						<div class="col-xs-4"><a ng-click="reactivateAccount()" class="redBtn">REACTIVATE</a></div>
						<div class="col-xs-4"></div>
					</div>
					<div class="col-xs-1"></div>
				</div>
			</div>
		</div>
	</div>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.0/jquery-ui.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/app.js"></script>
    <script src="js/controllers.js"></script>
    <script src="js/functions.js"></script>
    
  	<script type="text/javascript">
  		$("body").backstretch("images/spring/lavalife_bg_spring_2015.jpg");
  		
  		var io_operation = 'ioBegin';
		var io_bbout_element_id = 'ioBB';
		var io_install_stm = false;
		var io_install_flash = false;
		var io_exclude_stm  = 12; // don't use Active X on Vista or XP as they cause warnings on IE8
		var wsResponseForm;
  		
		function redirectActiveX(){ document.location.href="explainActiveX.html"; }
  		
		function redirectFlash(){ document.location.href = "http://www.macromedia.com/flash"; }
  		
  		  //var io_install_stm_error_handler = "redirectFlash();";
  		
		var io_max_wait = 5000;
  		
		var io_submit_form_id = wsResponseForm;
  		
		var io_submit_element_id = 'submit1';

      </script>
  	
  	<script src="https://mpsnare.iesnare.com/snare.js"></script>
  	
      </form>
  	
  </body>
</html>