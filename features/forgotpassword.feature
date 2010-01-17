Feature: Forgot password
	In order to enable the users to access their account 
	even when they have lost or forgot their password 
	we need to provide a way to reset their password

Background: 
	Given that an user with email "tester@example.com" with password "generic" exists
	And I am on the home page

#There is some cucumber problem with this scenario
#Its working correctly normally but cucumber could not find reset_perishable_token! for some reason
#Investigate later

@cukebugs
Scenario: Reset password when user remembers the email with which he signed up
	When I follow "Forgot password?"
	Then I should see "Enter the email address you used to sign up"
	When I fill in "email" with "tester@example.com"
	And I press "Reset my password"
	And an email should be send to the user with password reset link
	And I should see "Please check your inbox for instructions to reset your password"

@cukebugs
Scenario: Show error message when user enters wrong email address during forgot password
	When I follow "Forgot password?"
	Then I should see "Enter the email address you used to sign up"
	When I fill in "email" with "testernotexists@example.com"
	And I press "Reset my password"
	And I should see "Could not find an account associated with this email,please recheck"

