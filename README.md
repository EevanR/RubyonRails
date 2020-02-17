# Rails Article Application

[![Coverage Status](https://coveralls.io/repos/github/EevanR/RubyonRails/badge.svg?branch=master)](https://coveralls.io/github/EevanR/RubyonRails?branch=master) 

Rails Article App is a web applitcation that users can use to create accounts and share articles with one another. They may also comment on each others articles.

## Deployed Site
Deployed with continuous deployment through heroku at:
https://ca-rails-aut-eevan.herokuapp.com/

## User Stories
User can see list of articles on landing page
```
As a visitor,
When i visit the application's landing page,
I would like to see a list of articles
```
User can create articles
```
As a publisher
In order to add relevant content to my news service
I would like to be able to create articles
```
User can edit articles
```
As a publisher
In order to update my articles
I would like to be able to edit articles
```
User can comment on an article
```
As a User
In order to voice my opionions
I would like to be able to comment on an article
```
User can delete article
```
As a publisher
In order to keep my content relevant
I would like to be able to delete articles
```
User can only edit his own article
```
As a user
In order to keep my content secure
I want to be able to only edit my own articles
```

## Dependencies
- Rails v6.0.1
- Ruby v2.6.3
- Unit test Rspec
- Feature test Cucumber
- Devise for security 
- Pundit for authorization

## Setup
#### Clone repository
```
$ git clone https://github.com/EevanR/RubyonRails.git
$ cd RubyonRails
```

#### Install dependencies
Install RSpec using bundler if desire to run testing:
```
$ bundle install
```

## Run testing frameworks
In console:
Run Rspec to run unit tests
```
$ rspec
```
Run Cucumber to run feature tests
```
$ cucumber
```

### Actions available to the user

Head to the deployed address listed above to create or read articles!

## Updates/Improvement plans
Further styling and functionality, with subscription options and payment.

## License
Created under the <a href="https://en.wikipedia.org/wiki/MIT_License">MIT License</a>.
