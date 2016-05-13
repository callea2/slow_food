Feature: As a visitor
So that I can place my order
I would like to see a list of dishes on a page


As a restaurant owner
So that my customers can place orders
I would like a list of disches to be displayed on a page

  Background:
    Given that the following dishes exist in the system
      | name   |  price |
      | Sushi  |  63    |
      | Ushi   |  69    |

  Scenario: Display Dishes on index page
    Given I am on the home page
    Then I should see a list of dishes
