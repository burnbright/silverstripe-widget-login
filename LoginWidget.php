<?php
/*
 * Login widget for displaying a login box. Once logged in, the user's name and 
 * last visited date is shown, along with a log out link.
 */
class LoginWidget extends Widget {
	static $db = array();
	
	static $title = "Login";
	static $cmsTitle = "Login Box";
	static $description = "Allows a user to log in. The widget shows the user's name and last login when they are logged in.";
		
	function LoggedIn(){
		Requirements::css("widgets_login/loginwidget.css");
 		return Member::currentUser();
	}
	
	function Title(){
		return ($this->LoggedIn()) ? "Logged in": "Login";
	}
	
	function Member(){
		return Member::currentMember();
	}

}

?>
