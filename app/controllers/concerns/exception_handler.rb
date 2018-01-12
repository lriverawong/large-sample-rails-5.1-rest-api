# app/controllers/concerns/exception_handler.rb
# Using todos_controller: 
# set_todo - callback method to find a todo by id. In the case where the record does not exist, ActiveRecord will throw an exception ActiveRecord::RecordNotFound
module ExceptionHandler
  # provides the more graceful `included` method
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ message: e.message }, :not_found)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response({ message: e.message }, :unprocessable_entity)
    end
  end
end