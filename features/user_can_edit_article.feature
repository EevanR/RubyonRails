Feature: User can edit articles
  As a publisher
  In order to update my articles
  I would like to be able to edit articles

  Background:
    Given the following users exist:
      | email         | password |
      | user@mail.com | password |

    And the following articles exists:
      | title                | content              | author        |
      | A breaking news item | Some breaking action | user@mail.com |

  Scenario: User can successfully edit an article
    Given I am logged in as "user@mail.com"
    And I am on the Signed in page
    When I click on "A breaking news item"
    And I click on "Edit Article"
    And I fill in "Content" with "Not so breaking action"
    And I click on "Update Article"
    Then I should see "Not so breaking action"