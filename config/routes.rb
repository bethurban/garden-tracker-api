Rails.application.routes.draw do
  namespace :api do
    resources :users, except: [:index, :new, :edit, :update, :destroy] do
      resources :locations do
        resources :plants
      end
    end
  end
end
