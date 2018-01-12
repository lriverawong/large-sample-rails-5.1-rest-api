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
