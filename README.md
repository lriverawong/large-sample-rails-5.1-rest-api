# Rails 5.1 REST-API ToDo App
A todo list API where users can manage their to-do lists and todo items.
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
Use HTTPie for testing responses:
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