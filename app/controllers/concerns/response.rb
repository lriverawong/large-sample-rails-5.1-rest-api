# app/controllers/concerns/response.rb
# The Concern is a tool provided by the ActiveSupport lib for including modules in classes, creating mixins.
# json_response : responds with JSON and an HTTP status code (200 by default)
module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end