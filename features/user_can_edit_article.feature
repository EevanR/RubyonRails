Feature: User can edit articles
  As a publisher
  In order to update my articles
  I would like to be able to edit articles

  Background:
    Given the following user exist:
      | email         | password |
      | user@mail.com | password |

    And the following articles exists:
      | title                | content              |
      | A breaking news item | Some breaking action |

  Scenario: User can successfully edit an article
    Given I am logged in as "user@mail.com"
    And I am on the Signed in page
    When I click on "A breaking news item"
    And I click on "Edit Article"
    
