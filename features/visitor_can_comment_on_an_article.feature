Feature: Visitor can comment on an article
  As a visitor
  In order to voice my opionions
  I would like to be able to comment on an article

  Background:
    Given the following articles exists:
      | title                   | content              |
      | A breaking News Article | Some breaking action |

    And I am on the landing page

  Scenario: Visitor can comment successfully
    When I click on "A breaking News Article"
    And I fill in "Comment" with "This is fake news!!!!"
    And I click on "Submit"
    Then I should see "Commented"
    And I should be at "A breaking News Article"
    And I should see "This is fake news!!!!"