<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="matching.signup" %>

<!DOCTYPE html>
<html lang="en" ng-app="Lavalife">
  <head runat="server">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign Up – Lavalife.com Online Dating Site & Mobile Apps – Where Singles Click®</title>
	<meta name="description" content="Sign up for Lavalife.com online dating and get a 7 day free trial. Browse unlimited profiles, send unlimited messages and start having fun." />
    <!-- Styles -->
    <link href="css/finalbuild.css" rel="stylesheet">
    <link href="css/bootstrap-tour.min.css" rel="stylesheet">
   
	
   
	
	
	
	
		
  </head>
  
  <style>
			.upload-btn-wrapper {
        position: relative;
        overflow: hidden;
        display: inline-block;
      }

      .upload-btn-wrapper input[type=file] {
        font-size: 100px;
        position: absolute;
        left: 0;
        top: 0;
        opacity: 0;
      }

      .upload-button {
        border: 2px solid gray;
        color: gray;
        background-color: white;
        padding: 10px 20px;
        border-radius: 50%;
        font-size: 16px;
        font-weight: bold;
      }
	label {
		color:#757575;
		font-size:13px;
	}
	
	.label {
		color:#212121 !important;
		padding-left:0px !important;
		font-family:"Open Sans", sans-serif !important;
		font-size:14px !important;
		font-weight: 500 !important;
	}
	
	h2{
		margin-top: 12px;
		text-align: left;
		line-height: 25px;
		margin: 10px 0;
		color: #ff0000;
		font-weight: 300;
		padding-left: 50px;
		background-repeat: repeat-y;
	}
	
	.selectric{
		border-color:#e5e5e5 !important;
	}
	
	input {
		color:#212121;
		border-color:#e5e5e5 !important;
	}
	
	.devider-line{
		margin-top:30px;
	}
	
	.itemPanel{
		-webkit-box-shadow: 0px 2px 2px 1px #555;
		-moz-box-shadow: 0px 2px 2px 1px #555;
		box-shadow: 0px 2px 2px 1px #555;
		border:solid 1px #757575;
	}

	.crop-cancel{
		display:none;
	}
     
  </style>
  <body  ng-controller="SignupController as signup">
 
  	<!-- Wrap all page content here -->
	<div id="wrap">
    
	    <a href="./" id="logo-signup" class="visible-lg visible-md visible-sm"></a>
	    	    
		<nav class="navbar navbar-default visible-xs" role="navigation">
	      	
	        <!-- Brand and toggle get grouped for better mobile display -->
			
	        	
				<a href="./" id="logo" class="navbar-brand"></a>
	        
			</div>
	    
	      
		</nav>
	    
	    <section class="container" style="min-width:300px !important;">
	    	
	    	<div class="row register-holder">
	    		
	    		<div class="col-md-8 hidden-sm hidden-xs" style="position: relative; height: 100%; padding: 0px;">
	    
	    			<div class="backgrounds"><img class="auto-style1" src="images/spring/ll_step1_img.jpg" /></div>	    				    			
	    		</div>
	    		
	    		<div class="col-md-4 col-sm-12" id="register" style="left: -1px; top: 0px">
	    			
					<div class="lil-logo">
						<img src="images/landing/ll_logo_registration_circle_sml.png" />
					</div>
	    			
	    			<div class="step-1">
	    				
	    				<h2>Create Your Profile <br /><span>AND RECEIVE A 7-DAY FREE TRIAL.</span></h2>
	    				
	    				<div class="step-content">
							<!-- Upload Button -->
            
	    					
	    					<div class="errors-holder">&nbsp;</div>
		    				
							<form id="form1" runat="server">
								
							<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6" style="padding: 0px;">
									<label for="interested">First Name</label>
                                <asp:TextBox ID="txtprenom" runat="server" Font-Bold="True" OnTextChanged="txtprenom_TextChanged"></asp:TextBox>
								</div>
								
								
								
								<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6" style="padding: 0px;">
									<label for="interested">Last Name</label>
                                    <asp:TextBox ID="txtnom" runat="server"></asp:TextBox>
								</div>
								
								<div class="form-group">
									<label for="interested">I'm a</label>
							
                                    <asp:DropDownList ID="DropGenre" runat="server" Width="100%" OnSelectedIndexChanged="DropGenre_SelectedIndexChanged"></asp:DropDownList>		
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		
								</div>

								<div class="form-group">
									<label for="interested">interested</label>
							
                                    <asp:DropDownList ID="DropSexeOppose" runat="server" Width="100%" OnSelectedIndexChanged="DropSexeOppose_SelectedIndexChanged"></asp:DropDownList>		
								</div>
								
								<div class="form-group col-md-12 col-sm-12 col-xs-12" style="padding: 0px; left: 0px; top: 0px;">
									
									<label for="interested">Birthday</label>&nbsp;&nbsp;

									<asp:TextBox ID="txtAnnee" runat="server" TextMode="Number" CausesValidation="True"></asp:TextBox>
										
								</div>
								
								<div class="form-group">
									<label for="interested">Email Address</label>
									
                                    <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
								</div>
								
								<div class="form-group" ng-if="!fbAccessToken">
									<label for="password">Password</label>
									
                                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
								</div>
								
                                <asp:Button ID="brnJoin" runat="server" Text="JOIN NOW" BackColor="Red" ForeColor="White" OnClick="brnJoin_Click"></asp:Button>

								
								<div class="form-group" ng-if="!fbAccessToken">

									<asp:RequiredFieldValidator ID="reqPrenom" runat="server" ControlToValidate="txtprenom" ErrorMessage="fist name requis" ForeColor="Red"></asp:RequiredFieldValidator><br />
                                <asp:RequiredFieldValidator ID="reqNom" runat="server" ControlToValidate="txtnom" ErrorMessage="last name requis" ForeColor="Red"></asp:RequiredFieldValidator><br />


								    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtMail" ErrorMessage="email requis" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;<asp:RegularExpressionValidator ID="RegEmail" runat="server" ControlToValidate="txtMail" ErrorMessage="format email invalide" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="reqPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="mot de passe requis" ForeColor="Red"></asp:RequiredFieldValidator><br />
                                    <asp:RequiredFieldValidator ID="reqAnnee" runat="server" ControlToValidate="txtAnnee" ErrorMessage="birthday" ForeColor="Red"></asp:RequiredFieldValidator>


								&nbsp;<asp:RangeValidator ID="RanAnnee" runat="server" ControlToValidate="txtAnnee" ErrorMessage="vous devez avoir 18 ans ou plus " ForeColor="Red" MaximumValue="2004" MinimumValue="1956" Type="Integer"></asp:RangeValidator>

									<br />

									<asp:Label ID="lblDrop" runat="server" ForeColor="Red"></asp:Label>

								    <br />


								</div>
							</form>
							
							

						
							
							<div class="sign-up-facebook">
								<p>Already a member? <a href="login.aspx">Log in.</a></p>
							</div>
						
						</div>
						
	    			</div>
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	
	    			
	    		</div>
			
				
			
			</div>
		
	    </section>
		
	</div>
	
	
	
	<div id="loader"></div>
	
	<div class="modal"  data-backdrop="static" id="location-modal"></div>
	
	<div id="fb-root"></div>
	
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
    	
    	$( document ).ready(function() {
    		
            $('select').selectric({ 
                disableOnMobile: false 
            });
            dropThatSelect();
		});
		
		var io_operation = 'ioBegin';
		var io_bbout_element_id = 'ioBB';
		var io_install_stm = false;
		var io_install_flash = false;
		var io_exclude_stm  = 12; // don't use Active X on Vista or XP as they cause warnings on IE8
		var wsResponseForm;
			
		
			
			  //var io_install_stm_error_handler = "redirectFlash();";
			
		var io_max_wait = 5000;
			
		var io_submit_form_id = wsResponseForm;
			
		var io_submit_element_id = 'submit1';
		
    </script>
    
    <script src="https://mpsnare.iesnare.com/snare.js"></script>
    <script src="js/cj-lavalife.js"></script>
  </body>
</html>
