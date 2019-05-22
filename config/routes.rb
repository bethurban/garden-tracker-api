Rails.application.routes.draw do
  namespace :api do
    resources :users do
      resources :locations do
        resources :plants
      end
    end
  end
end
