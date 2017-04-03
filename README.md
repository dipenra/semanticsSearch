# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.4.0
* Rails version: 5.0.2
* Other Dependencies
    - SQLite3
    - Semantics3 API (https://www.semantics3.com/)
    - Bundle Install (http://bundler.io/v1.13/man/bundle-install.1.html)
    
* Local Setup
    - Setup Local database
        - $ rake db:create
        - $ bin/rails db:migrate
    - Install the gems 
        - $ bundle install
    - Run the App
        - $ rails server
    - Run Test
        - $rails test
        
* Contents
    - UI where you can search for a product using Semantics3 API
    - UI to view the seach terms stored in SQLite3 Database. Edit them, delete them etc
    - Pagination (Although it looks like Sematics3 API pagination is not working)
    
* Description of how Caching works
 - Everytime a user searces for a product the logic first checks to see if the data is
 locally available. If not fetches the data using the Semantics3 API. Stores the data in the local
 database and spits it to the frontend.
 - If the data is present in the database then it gets the data from the database.
 
