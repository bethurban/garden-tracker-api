Rails.application.routes.draw do
  namespace :api do
    resources :locations do
      resources :plants
    end
  end
end
