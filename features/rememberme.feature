Feature: Remember me functionality
	In order to provide better user experiece
	site visitors would want their login remember 
	between sessions

	Scenario: Persist session 
		#Note: not supported by webrat defer to selenium
		#Given that I enabled cookies in my browser
		Given that an user with email "tester@example.com" with password "generic" exists
		And that I am on the home page
		When I fill in the following:
			|Email   | tester@example.com |
			|Password| generic|
		And I check "Remember me"
		And I press "Login"
		And I should see "Welcome"
	
