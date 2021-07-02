Rails.application.routes.draw do
  devise_for :users
  root "homes#show"
  resource :dashboards, only: %i[show]
  resource :links, only: %i[new create]

  #
  # DANGER
  # Route Globbing: https://guides.rubyonrails.org/routing.html
  #
  #  - route matching is from top to bottom.
  #  - this will match most routes not matched by one of the above ones
  #
  match "*short_url", to: "redirections#show", via: [:get], constraints: { short_url: /[a-zA-Z0-9]{1,8}/ }, as: :redirections
end
