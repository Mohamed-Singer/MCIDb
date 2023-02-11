# MCIDb
> A platform for managing the details of movies and celebrities(similar to IMDb website)

# SETUP
## **Development stack**
------------------------
- Ruby `2.7.2`
- Rails `6.0.5.1`
- MySQL `5.7.x`

## **Development environment setup**
--------------------------------------------
### MacOS prerequsites
1. `xcode-select --install` - Update xcode from app store. Make sure to run xcode after installation or update
1. MySQL:
    1. Install mysql: `brew install mysql@5.7`
    1. Run mysql locally: `brew services start mysql@5.7`
    1. Grant permissions and initialize MySQL DB with root/root username/password 
        * `mysqld --initialize`
        * this will create new DB with username:root but random password
        * Login with those credentials
        * `mysql -u root -p`
        * then change the password to `root`
        * `ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';`
6. Ruby using rbenv:
    1. Install rbenv -> `brew install rbenv`
    2. Install ruby 2.7.2 -> `rbenv install 2.7.2`
    3. Use ruby 2.7.2 as default -> `rbenv global 2.7.2`
### Setting up
1. `touch .env` and add facebook app ID and secret to the file
1. `bundle install` to install dependencies from `Gemfile`
1. `rake db:create & rake db:migrate` to create DB and apply migrations.
1. `rake db:seed` to create root user for the admin panel
1. `rspec` - to run specs
1. `rails s` - to run rails(puma) server
1. URLs:
    *  Admin Panel: http://localhost:3000/admin (email: 'admin@example.com', password: 'password')
    *  Website: http://localhost:3000/

## **Features**
--------------------------------------------
### Current Features
1. An admin panel where the administrator can have total control (CRUD) over the following entities:
    * Movies
    * Actors
    * Directors
    * Genre
    * Awards
    * News
    * Users
    * Film Ratings

![Alt text](AdminPanel.png?raw=true "Admin Panel")

2. Website with the following features:
    * Ability to see the featured movies set by the platform administrator. 
    * View the opening this week movies by their release date.
    * Filter movies by genre.
    * View the news added by the platform administrator.
    * Search within the news content.
    * Search in movies and celebrity names.
    * Submit a review on a movie with a rating.

### Upcoming Features
1. Website user authentication using Facebook.
2. Share movies on facebook.
3. Website user watchlist.

## **Current Database ERD**
--------------------------------------------
![Alt text](ERD.png?raw=true "DB ERD")
