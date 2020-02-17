Feature: List articles on landing page
    As a visitor,
    When i visit the application's landing page,
    I would like to see a list of articles

  Background:
    Given the following users exist:
      | email          | password |
      | user@mail.com  | password |
      | user2@mail.com | password |

    Given the following articles exists:
      | title                | content                          | author         |
      | A breaking news item | Some breaking action             | user@mail.com  |
      | Learn Rails 5        | Build awesome rails applications | user2@mail.com |

  Scenario: Viewing list of articles on the application's landing page
    When I am on the landing page
    Then I should see a list of articles
    And I should see "A breaking news item"
    And I should see "Some breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"