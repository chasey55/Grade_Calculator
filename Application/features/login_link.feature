Feature: Add a new user
  
  As a student
  so that I can calculate my grade
  I want to be able to login
  
Scenario: As a student I want to be able to navigate from the homepage to the login page
  Given I am on the home page
  When I click on the "Login" link
  Then I should be on the "Class Grade Calculator" page
