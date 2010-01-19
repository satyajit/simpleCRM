Given /^that I am on the home page$/ do
  visit "/"
end
 
Given /^I am not logged in$/ do
   @user_session.nil?
end
 
Given /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |email,password|
  visit url_for(:controller => "user_session", :action => "new")
  fill_in :email, :with => email
  fill_in :password, :with => password
  click_button "Login"
end
 
Given /^the following users$/ do |user_data|
  user_data.hashes.each do |user_hash|
    User.create!(user_hash)
  end
end

Given /^that an user with email "([^\"]*)" with password "([^\"]*)" exists$/ do |email,password|
  if User.find_by_email(email).blank? 
    Factory(:tester, :email => email, :password => password, :password_confirmation => password)
  end
end

When /^an email should be send to the user with password reset link$/ do
  pending # express the regexp above with the code you wish you had
end

