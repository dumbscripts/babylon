Feature: Login

@login
Scenario: Test Login
	Given I am on the login page
	Then I enter valid credentials and click login
	

@docs
Scenario: Document Register
	Given I am on the login page
	Then I enter valid credentials and click login
	Then I navigate to document register
	Then I click the temp files tab

	Then I navigate to my tasks