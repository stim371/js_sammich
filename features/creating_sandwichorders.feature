Feature: Creating Sandwich orders
	In order to order sandwiches to enjoy promptly
	As a user
	I want to create them easily
	
	Background:
		Given I am on the homepage
		When I follow "New Order"
	
	Scenario: Creating an order
		And I fill in "Ordering person" with "Joel"
		And I select "Meat" from "Sandwich type"
		And I fill in "Sandwich maker" with "Randy Savage"
		And I press "Place Order"
		Then I should see "Sandwich order was successfully created."
		
	Scenario: Creating an order without a Sandwich maker
		And I fill in "Ordering person" with "Joel"
		And I select "Meat" from "Sandwich type"
		And I press "Place Order"
		Then I should see "Sandwich maker can't be blank"
		
	Scenario: Creating an order without a Sandwich type
		And I fill in "Ordering person" with "Joel"
		And I select "" from "Sandwich type"
		And I fill in "Sandwich maker" with "Chef"
		And I press "Place Order"
		Then I should see "Sandwich maker can't be blank"
			
	Scenario: Creating an order without an Ordering person
		And I fill in "Sandwich maker" with "Joel"
		And I select "Meat" from "Sandwich type"
		And I press "Place Order"
		Then I should see "Sandwich maker can't be blank"