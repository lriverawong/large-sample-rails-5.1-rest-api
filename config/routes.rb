# config/routes.rb
Rails.application.routes.draw do
  
  # module the controllers without affecting the URI
  scope module: :v2, constraints: ApiVersion.new('v2') do
    resources :todos, only: :index
  end

  # creating todo resource with a nested items attribute
  # enforces 1:m associations at the routing level
  # namespace the controllers without affecting the URI
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :todos do
      resources :items
    end
  end
end