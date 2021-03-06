Feature: User can create articles
    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    Background:
        Given the following users exist:
            | email         | password |
            | user@mail.com | password |
        And I am on the landing page

    Scenario: User can successfully creates an article
        Given I am logged in as "user@mail.com"
        And I am on the Signed in page
        When I click on "New Article"
        And I fill in "Title" with "Happy Holidays"
        And I fill in "Content" with "Buy your gifts now!"
        And I click on "Create Article"
        Then I should be on the "Happy Holidays" page
        And I should see "Article was successfully created"
        And I should see "Happy Holidays"
        And I should see "Buy your gifts now!"

    Scenario: Visitor can not create article [Sad path]
        Then I should not see "New Article"
