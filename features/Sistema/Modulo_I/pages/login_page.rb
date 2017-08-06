#mapping

class LoginPage < SitePrism::Page
   element :login, "a[href='/sign_in']"
   element :user_name, "input[id='user_email']"
   element :password, "input[id='user_password']"
   element :login_btn, "input[type='submit'][name='commit']" 
end

class SignUp < SitePrism::Page
    element :sign_up, "a[class='btn btn-primary pull-right btn-lg'][href='/sign_up']"
    element :sgn_name, "input[id=user_name]"
    element :sgn_email, :xpath, '//input[@name="user[email]" and @id="user_email"]'
    element :sgn_pwd, :xpath, '//input[@name="user[password]" and @id="user_password"]'
    element :sgn_pwd_c, :xpath, '//input[@name="user[password_confirmation]" and @id="user_password_confirmation"]'
    element :chk_confirm, "input[id='user_agreed_to_terms']"
    element :btn_submit, :xpath, '//input[@type="submit" and @name="commit"]'
    element :my_courses, 'a[href="/courses/enrolled"]'
end