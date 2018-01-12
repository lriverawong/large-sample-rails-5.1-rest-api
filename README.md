# Rails 5.1 REST-API ToDo App
A todo list API where users can manage their to-do lists and todo items.

## Summary of REST-API
- Rails 5.1
- Ruby 2.4.2
- RSpec, FactoryBot
- Faker for fake data.
- Versioning.
- Pagination.
- Serialization.

```
Endpoint 	                          Functionality
POST          /signup 	            Signup
POST          /auth/login 	        Login
GET           /auth/logout 	        Logout
GET           /todos 	              List all todos
POST          /todos 	              Create a new todo
GET           /todos/:id 	          Get a todo
PUT           /todos/:id 	          Update a todo
DELETE        /todos/:id 	          Delete a todo and its items
GET           /todos/:id/items 	    Get a todo item
PUT           /todos/:id/items 	    Update a todo item
DELETE        /todos/:id/items 	    Delete a todo item
```

Run specs
```
bundle exec rspec
```
According to RSpec, official docs recommend writing request specs instead.
```
Generating controllers by default generates controller specs. However, we won't be writing any controller specs. We're going to write request specs instead.

Request specs are designed to drive behavior through the full stack, including routing. This means they can hit the applications' HTTP endpoints as opposed to controller specs which call methods directly. Since we're building an API application, this is exactly the kind of behavior we want from our tests.
```
Use HTTPie for testing responses for todos:
```
# GET /todos
$ http :3000/todos
# POST /todos
$ http POST :3000/todos title=Mozart created_by=1
# PUT /todos/:id
$ http PUT :3000/todos/1 title=Beethoven
# DELETE /todos/:id
$ http DELETE :3000/todos/1
```
Use HTTPie for testing responses for todo items:
```
# GET /todos/:todo_id/items
$ http :3000/todos/2/items
# POST /todos/:todo_id/items
$ http POST :3000/todos/2/items name='Listen to 5th Symphony' done=false
# PUT /todos/:todo_id/items/:id
$ http PUT :3000/todos/2/items/1 done=true
# DELETE /todos/:todo_id/items/1
$ http DELETE :3000/todos/2/items/1
```

## Versioning
We define a custom vendor media type application/vnd.todos.{version_number}+json giving clients the ability to choose which API version they require.

## Pagination
```
# request without page
$ http :3000/todos
# request for page 1
$ http :3000/todos page==1
# request for page 2
$ http :3000/todos page==2
```

## TO BE DONE
- add authentication
https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-two