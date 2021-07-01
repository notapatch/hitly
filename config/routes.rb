Rails.application.routes.draw do
  devise_for :users
  root "homes#show"
  resource :dashboards, only: %i[show]
end
