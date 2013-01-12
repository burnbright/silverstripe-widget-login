<?php

/*
 * Login widget for displaying a login box. Once logged in, the user's name and 
 * last visited date is shown, along with a log out link.
 */

class LoginWidget extends Widget {

    static $title = "Login";
    static $cmsTitle = "Login Box";
    static $description = "Allows a user to log in. The widget shows the user's name and last login when they are logged in.";
    protected static $BadLoginURL = false;

    function LoggedIn() {
        Requirements::css("widgets_login/templates/loginwidget.css");
        return Member::currentUser();
    }

    function Title() {
        return ($this->LoggedIn()) ? _t('LoginWidget.LOGGEDIN','Logged In') : _t('LoginWidget.LOGIN','Login');
    }

    function LoginForm() {
        if (self::$BadLoginURL) {
            $page = self::$BadLoginURL;
        } else {
            $page = Director::get_current_page()->URLSegment;
        }
        Session::set("BadLoginURL", Director::absoluteURL($page, true));

        $controller = new LoginWidget_Controller($this);
        $form = $controller->LoginForm();
        $this->extend('updateLoginForm', $form);
        return $form;
    }

    public static function setBadLoginURL($url) {
        self::$BadLoginURL = $url;
    }

}

class LoginWidget_Controller extends Widget_Controller {

    function LoginForm() {
        $form = new MemberLoginForm($this, 'LoginForm');
        return $form;
    }

    function Link($action = null) {
        return $this->class;
    }

}

