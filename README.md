# Philly's Finds

Ruby on Rails code review for Epicodus


#### Description
Saves products and associated reviews using one-to-many relationships, user authentication and admin authorization.

## Requirements
  * Ruby
  * Rails
  * Active Record
  * Postgres

## Setup

  * `git clone https://github.com/sushadore/Phillys_Finds.git`
  * `cd Phillys_Finds`
  * `postgres`
  * Open new terminal tab
  * `rake db:setup`
  * `rails s`
  * Open browser and navigate to http://localhost:3000/
  * Set up admin for user in psql

## Known Bugs
If any user attributes are updated in the rails console instead of in psql the user log in information no longer functions.

## Technologies
Ruby on Rails, Active Record, Postgres, HTML, CSS, Bootstrap
## Author
Susha Dore 7.7.2017
## Legal
MIT License

# TODO

  * Admin FactoryGirl
  * Admin filter to disallow certain paths for regular users if manually entered in url
