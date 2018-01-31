Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resources :products, except: [:new, :edit]
      resources :manufacturers, only: :index
    end
  end
end
