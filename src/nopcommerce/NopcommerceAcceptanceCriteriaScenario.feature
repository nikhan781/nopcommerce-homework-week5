Feature: Demo nopCommerce's top menu acceptance criteria
  As a user, I would like to check acceptance criteria of nopCommerce top menu
  Background: User is on given URL
    When User type URL https://demo.nopcommerce.com
    And User presses on Enter button
    Then User is on given URL

  Scenario: Verify that user can navigate to Books Category
     When User is on given URL
     And User clicks on Books tab on top menu
     Then User is navigated to Books category page

  Scenario: Verify that user can see the Books category page with filters and list of products
   When User is on given URL
   And User clicks on Books tab on top menu
   And User checks Filters and List tab
   Then Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort By' filter on Books category page
    Given User is on Book Category page
    When User is on Book Category page
    And Check 'Sort by' filter is present
    Then 'Sort by' filter is available on Book Category page

  Scenario: Verify that user can see 'Display' filter on Book Category page
    Given User is on Book Category page
    When User is on Book Category page
    And Check 'Display' filter is present
    Then 'Display' filter is available on Book Category page

  Scenario: Verify that user cab see 'Grid' tab on Book Category page
    Given User is on Book Category page
    When User is on Book Category page
    And Check 'Grid' tab is present
    Then 'Grid' tab is available on Book Category page

  Scenario: Verify that user can see 'List' tab on Book Category page
    Given User is on Book Category page
    When User is on Book Category page
    And Check 'List' tab is present
    Then 'List' tab is available on Book Category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given User is on Book Category page
    When User is on Book Category page
    And Click on 'Sort by' Filter
    And Check that 'Name: A to Z' selection is present
    Then 'Name: A to Z' is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
    Given User is on Book Category page
    When User is on Book Category page
    And CLick on 'Sort by' Filter
    And Check that 'Name A to Z' is first in order
    Then 'Name: A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is fucntioning as expected(Note: Products are filter in alphabetical order)
    Given User is on Book Category page
    When User is on Book Category page
    And Click on 'Sort by' fFilter
    And Select 'Name: Ato Z' filter
    Then All product are displayed in alphabetical



