Given(/^i am in the initial page$/) do
  visit "https://letskodeit.teachable.com/"
end

And(/^type valid credentials in the text boxes$/) do |variable|
  find(:css, "a.btn.btn-primary.pull-right.btn-lg").click
  find(:css, "input[id=user_name]").set('User Mail')
  find(:xpath, '//input[@name="user[email]" and @id="user_email"]').set('user_mail@yahoo.com')
  find(:xpath, '//input[@name="user[password]" and @id="user_password"]').set('test1234567890')
  find(:xpath, '//input[@name="user[password_confirmation]" and @id="user_password_confirmation"]').set('test1234567890')
  find(:checkbox, 'user[agreed_to_terms]').set(true)
  find(:xpath, '//input[@type="submit" and @name="commit"]').click
end

Then(/^should be have access to the main application$/) do
  #define
end