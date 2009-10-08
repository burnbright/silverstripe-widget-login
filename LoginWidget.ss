<div class="LoginWidget">
	<% if LoggedIn %>	
	<p class="loggedinas">You are logged in as $Member.Name</p>
	<p class="lastlogin">Your last login was on $Member.LastVisited.Long</p>
	<p><a href="Security/logout">Log out</a></p>
	<% else %>
		<form action="emmaus/Security/?executeForm=LoginForm" method="post" enctype="application/x-www-form-urlencoded">
		<p id="MemberLoginForm_MemberLogin_error" class="message " style="display: none"></p>
		<fieldset>
				<input class="hidden" type="hidden" name="AuthenticationMethod" value="MemberAuthenticator" />
			
				<div id="Email" class="field text ">
					<label class="left" for="MemberLoginForm_MemberLogin_Email">Email</label><span class="middleColumn"><input class="text" type="text" id="MemberLoginForm_MemberLogin_Email" name="Email" value="" /></span>
				</div>
				<div id="Password" class="field encrypt">
					<label class="left" for="MemberLoginForm_MemberLogin_Password">Password</label><span class="middleColumn"><input class="text" type="password" id="MemberLoginForm_MemberLogin_Password" name="Password" value="" /></span>
				</div>
				<p id="Remember" class="field checkbox">
					<input class="checkbox" type="checkbox" value="1" id="MemberLoginForm_MemberLogin_Remember" name="Remember"   />
					<label class="right" for="MemberLoginForm_MemberLogin_Remember">Remember me?</label>
				</p>
				<input class="hidden" type="hidden" id="LoginWidget_BackURL" name="BackURL" value="$Link" />
				<div class="clear"><!-- --></div>
		</fieldset>
		<div class="Actions">
				<input class="action " id="MemberLoginForm_MemberLogin_action_dologin" type="submit" name="action_dologin" value="Log in"  />
				<input class="action " id="MemberLoginForm_MemberLogin_action_forgotPassword" type="submit" name="action_forgotPassword" value="Lost password?"  />
		</div>
	</form>
	<% end_if %>
</div>