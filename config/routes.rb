Rails.application.routes.draw do
  get 'welcome/index'

  # Resource used for a collection of similar objects with CRUD operations
  resources :articles do
    resources :comments
  end

  root 'welcome#index'

end
