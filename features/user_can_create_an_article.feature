Feature: User can create articles 
    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    Background:
        Given I am on the landing page
        And I click on "New Article"

    Scenario: Successfully creates an article
        When I fill in "Title" with "Happy Holidays"
        And I fill in "Content" with "Buy your gifts now!"
        And I click on "Create Article"
        Then I should be on the "Happy Holidays" page
        And I should see "Article was successfully created"
        And I should see "Happy Holidays"
        And I should see "Buy your gifts now!"
        