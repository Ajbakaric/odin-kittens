Kittens API
This project is part of the curriculum from The Odin Project, specifically the Ruby on Rails section. It's an API for managing information about adorable kittens.

Description
The Kittens API allows users to perform CRUD operations (Create, Read, Update, Delete) on kitten records. You can create new kittens, retrieve information about existing ones, update their details, and delete them if needed.

Technologies Used
Ruby on Rails
SQLite (for development)
RSpec (for testing)
Getting Started
To get started with this project, follow these steps:

Clone this repository to your local machine.
Install Ruby on Rails if you haven't already.
Navigate to the project directory in your terminal.
Run bundle install to install the required gems.
Set up the database by running rails db:create db:migrate db:seed.
Start the Rails server with rails server.
You can now access the API endpoints at http://localhost:3000/kittens.
API Endpoints
GET /kittens: Retrieve a list of all kittens.
POST /kittens: Create a new kitten.
GET /kittens/:id: Retrieve details about a specific kitten.
PATCH /kittens/:id: Update details of a specific kitten.
DELETE /kittens/:id: Delete a specific kitten.
Testing
This project uses RSpec for testing. You can run the tests by executing rspec in the terminal.

