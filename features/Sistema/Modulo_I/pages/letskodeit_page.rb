#mapping

class LoginPage < SitePrism::Page
   element :login,      "a[href='/sign_in']"
   element :user_name,  "input[id='user_email']"
   element :password,   "input[id='user_password']"
   element :login_btn,  "input[type='submit'][name='commit']" 
   
   #Mensagem de alerta - Erros no cadastro
   element :msg_box,     :xpath, "//form[@id='new_user']/div[1]"
   element :msg_error_1, :xpath, "//form[@id='new_user']/div[1]/ul/li[1]"
   element :msg_error_2, :xpath, "//form[@id='new_user']/div[1]/ul/li[2]"
   element :msg_error_3, :xpath, "//form[@id='new_user']/div[1]/ul/li[3]"
end

class SignUp < SitePrism::Page
    element :sign_up,               "a[class='btn btn-primary pull-right btn-lg'][href='/sign_up']"
    element :sgn_name,              "input[id=user_name]"
    element :sgn_email,     :xpath, '//input[@name="user[email]" and @id="user_email"]'
    element :sgn_pwd,       :xpath, '//input[@name="user[password]" and @id="user_password"]'
    element :sgn_pwd_c,     :xpath, '//input[@name="user[password_confirmation]" and @id="user_password_confirmation"]'
    element :chk_confirm,           "input[id='user_agreed_to_terms']"
    element :btn_submit,    :xpath, '//input[@type="submit" and @name="commit"]'
    element :my_courses,            'a[href="/courses/enrolled"]'
end

class LogOut < SitePrism::Page
    element :logged_my_courses, 'a[href="/courses/enrolled"]'
    element :drop_down_user,    'a[class="fedora-navbar-link navbar-link dropdown-toggle open-my-profile-dropdown"]'
    element :btn_logout,        'a[href="/sign_out"]'
end