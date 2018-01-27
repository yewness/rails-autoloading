Rails.application.routes.draw do
  resources :todo_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :leave do
    resources :types
    resources :groups, shallow: true do
      resources :entitlements
    end
  end

  root to: 'home#index'
end
