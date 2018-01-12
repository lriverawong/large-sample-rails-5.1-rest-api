# config/routes.rb
Rails.application.routes.draw do
  # creating todo resource with a nested items attribute
  # enforces 1:m associations at the routing level
  resources :todos do
    resources :items
  end
end