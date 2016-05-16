Feature: As a visitor
So that I can place my order
I would like to see a cathegorized list of dishes on a page


As a restaurant owner
So that my customers can place orders
I would like a list of cathegorized disches to be displayed on a page

Background:
  Given the following cathegories exist
    | name  |
    | Starter |
    | Main Course |
    | Dessert |

    Given the following dishes exist
      | cathegory | name | price |
      | Starter | Makushi | 30 |
      | Starter | Saprushi | 25 |
      | Starter | Tampushi | 20 |
      | Main Course | Sushi | 50 |
      | Main Course | Ushi | 45 |
      | Main Course | Shi | 40  |
      | Dessert | Pieushi | 16  |
      | Dessert | Cakeushi| 15  |
      | Dessert | Iceushi | 14  |

Scenario: Display Dishes on index page
  Given I am on the home page
  Then I should see "Starter"
  And I should see "Tampushi"
  And I should see "20"
  Then I should see "Dessert"
  And I should see "Cakeushi"
  And I should see "15" 

Scenario: Display 'No dishes message' if no dishes has been created
  Given there are no dishes in the system
  And I am on the home page
  Then I should see "No dishes available"
