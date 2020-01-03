Feature: User can only edit his own article
  In order to keep my content secure
  As a user
  I want to be able to only edit my own articles


  Background:
    Given the following users exist:
      | email           | password |
      | thomas@craft.se | password |
      | oliver@craft.se | password |

    And the following articles exists:
      | title      | content      | author        |
      | Big news   | some content | thomas@craft.se |
      | Small news | some content | oliver@craft.se |

    And I am logged in as "thomas@craft.se"
    And I am on the landing page

  Scenario: User can edit his own article
    And I click on "Big news"
    And I click on "Edit Article"
    Then I should be on the edit page for "Big news"


  Scenario: User can NOT see edit button on another users article
    And I click on "Small news"
    Then I should not see "Edit Article"

  Scenario: User can NOT edit another users article
    Given I am on the edit page for "Small news"
    Then I should see "You are not authorized to do that"