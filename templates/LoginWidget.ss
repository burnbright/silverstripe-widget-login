<% if LoggedIn %>	
	<p class="loggedinas">$CurrentMember.FirstName $CurrentMember.Surname</p>
	<p class="lastlogin"><% _t('LoginWidget.LASTVISIT','Last visit') %>: <span class="date">$CurrentMember.LastVisited.Nice</span></p>
	<p><a class ="logoutlink" href="Security/logout"><% _t('LoginWidget.LOGOUT','Log out') %></a></p>
<% else %>
		$LoginForm
<% end_if %>
