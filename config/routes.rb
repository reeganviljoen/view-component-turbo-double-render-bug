Rails.application.routes.draw do
  resources :button_clicks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "button_clicks#index"
end
