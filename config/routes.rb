Rails.application.routes.draw do
  root "button_clicks#broken"
  get "fixed", to: "button_clicks#fixed"
  post "redirect_to_broken", to: "button_clicks#redirect_to_broken"
  post "redirect_to_fixed", to: "button_clicks#redirect_to_fixed"
end
