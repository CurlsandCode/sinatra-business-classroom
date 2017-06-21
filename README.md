#Sinatra Business Classroom App

Welcome to the Sinatra Business Classroom App!

This is a fully functional MVC and CRUD application which allows students to upload their profiles and presentation assignments.

It validates user information on sign up and also in editing information.

Sinatra is employed as the web framework while SQlite is used as the database. For the frontend, Bootstrap has been used.

## Set up:

If you would like to test out this framework, you can run the following commands:

```bash
# For ssh clones:
git clone git@github.com:WilliamBarela/sinatra-business-classroom.git

# For html clones:
# git clone https://github.com/WilliamBarela/sinatra-business-classroom.git

# To resolve any dependancies:
bundle install

# To set up your environment and run migrations:
rake db:migrate SINATRA_ENV=test
rake db:migrate

# To populate database with seed data:
rake db:seed
```
