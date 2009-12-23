@contacts
Feature: Contact management
	In order to enable users to keep their contacts at one place
  they want the ability to add,edit,delete and view contacts

	Background: 
		Given that an user with email "tester@example.com" with password "generic" exists
	  And I am on dashboard page 

	Scenario: Create a contact
		When I follow "CONTACTS"
		Then I should see "Add contact"
		When I follow "Add contact"
		Then I should see "Enter contact details"
		When I fill in the following:
			|Name   | Bill Gates								|
			|Email  | billg@microsoft.com				|
			|Phone  | 4258028000								|
			|Company| Microsoft									|
			|Address|	1 Microsoft Way Redmond WA|
		And I press "Create"
		Then I should see "Bill Gates"

	Scenario: View all contacts
		When I have contacts for Bill Gates and Steve Balmer
		And I follow "CONTACTS"
		Then I should see "Listing contacts"
		And I should see "Bill Gates"
		And I should see "billg@microsoft.com"
		And I should see "Steve Balmer"
		And I should see "steveb@microsoft.com"
	
  Scenario: Delete a contact
		When I have contacts for Bill Gates and Steve Balmer
		And I follow "CONTACTS"
    #This destroys the first contact Bill Gates, but how to specify a specific contact.. RSpec?
		When I follow "Destroy"		
	  Then I should not see "Bill Gates"		

	Scenario: Edit a contact
		When I have contacts for Bill Gates and Steve Balmer
		And I follow "CONTACTS"
		When I follow "Edit"
		Then I should see "Editing contact"
		When I fill in "Phone" with "1234567890"
		And I press "Update"
		Then I should see "1234567890" 
	
  # Can add more scenarios for showing etc..
