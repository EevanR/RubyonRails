Feature: User can comment on an article
  As a User
  In order to voice my opionions
  I would like to be able to comment on an article

  Background:
    Given the following user exist:
      | email         | password |
      | user@mail.com | password |

    And the following articles exists:
      | title                   | content              |
      | A breaking News Article | Some breaking action |

    And I am logged in as "user@mail.com"
    And I am on the landing page

  Scenario: User can comment successfully
    When I click on "A breaking News Article"
    And I fill in "Comment" with "This is fake news!!!!"
    And I click on "Submit comment"
    Then I should see "Your comment was successfully submited"
    And I should see "This is fake news!!!!"

  Scenario: User can not leave empty comment
    When I click on "A breaking News Article"
    And I fill in "Comment" with ""
    And I click on "Submit comment"
    Then I should see "Something went wrong"

  Scenario: User can delete comment
    When I click on "A breaking News Article"
    And I fill in "Comment" with "This is fake news!!!!"
    And I click on "Submit comment"
    And I click on "Delete Comment"
    Then I should see "0 Comments"