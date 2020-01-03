Feature: List articles on index page
   As a visitor,
   When i visit the application's landing page,
   I would like to see a list of articles

   Background:
      Given the following articles exists:
         | title                | content                          | author_id |
         | A breaking news item | Some breaking action             | 1         |
         | Learn Rails 5        | Build awesome rails applications | 2         |

   Scenario: Viewing list of articles on the application's landing page
      When I am on the landing page
      Then I should see "A breaking news item"
      And I should see "Some breaking action"
      And I should see "Learn Rails 5"
      And I should see "Build awesome rails applications"