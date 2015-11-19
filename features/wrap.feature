Feature: Writing scenarios for Signing Up for an account, Creating a Wrap and Publishing a Wrap.

  Scenario: Signing Up for an account
    Given I am in Wrap Home page
    When click on "Sign Up" button, should be redirect to Sign Up page
    And click on "Try free" on "Professional" plan
    Then type my email "test_wrap@gmail.com" on pop-up and click on "Sign Up" button
    Then type username "test_wrap" and password "test_wrap"
    When click on "Create account" button
    Then I should be redirect to "Complete account info" page
    And I will provide all required information and click on "Next" button
    Then I should be redirect to the account page

  Scenario: Creating a Wrap
    Given I am in Wrap Home page
    When click on "Sign In" button and type email and password
    Then I should be redirect to the account page
    When click on " + Create New Wrap" button
    Then "New Wrap" pop-up should be displayed
    And I select one of the templates, should be redirect to Configure Screen
    And change the name of the wrap and save it

  Scenario: Publishing a Wrap
    Given I am in Wrap Home page
    When click on "Sign In" button and type email and password
    Then I should be redirect to the account page
    When click on " + Create New Wrap" button or open drafted Wrap
    Then should be redirect to Configure Screen
    And I click on "Publish" button
    Then I should see Congratulations message