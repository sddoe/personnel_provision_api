# PERSONNEL PROVISION API

This is a simple project as code challenge for selection process at Devco. It's an API for employers to manage personnel provision.

In this project, I

- Implement some basic routes;
- Build models for owners and equipment;
- Write migrations for those models to evolve the schema;
- Write DB- and model-level validations for certain attributes;
- Seed the database with some starter data;
- Create an API layer using different controllers to handle requests from the API endpoints;
- Use Postman to test each of the endpoints to make sure they are working properly;
- Use gitflow.
## Built With

- Ruby 3.1.2
- Ruby on Rails 7.0.4
- Postman 7.33.0

## Getting Started
- Clone the project to your local machine;
- `cd` into the project directory;
- Run `bundle install` to install the necessary gems;
- Run `rails db:create`;
- Run `rails db:migrate`;
- Run `rails db:seeds`;
- Run `rails s` to start a server in your computer;
- Run `rails routes` to see the available API endpoints (ignoring Rails generated routes, of course);
- Test each of them with Postman. You can find out how to install postman [here](https://www.getpostman.com/)