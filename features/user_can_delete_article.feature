Feature: User can delete article
  As a publisher
  In order to keep my content relevant
  I would like to be able to delete articles

  Background:
    Given the following users exist:
      | email         | password |
      | user@mail.com | password |

    And the following articles exists:
      | title                | content              | author        |
      | A breaking news item | Some breaking action | user@mail.com |

  Scenario: User can successfully delete an article
    Given I am logged in as "user@mail.com"
    And I am on the Signed in page
    When I click on "A breaking news item"
    And I click on "Delete Article"
    Then I should see "Article successfully deleted"