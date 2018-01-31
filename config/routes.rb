Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resource :products, except: [:new, :edit]
    end
  end
end
