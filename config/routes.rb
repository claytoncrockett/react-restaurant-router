Rails.application.routes.draw do
  namespace :api do
    resources :restaurants, :menus, :items 
  end

  get '*other', to: 'static#index'
end
