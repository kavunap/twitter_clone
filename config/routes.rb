Rails.application.routes.draw do
  resources :twees
  root 'twees#index'
  resources :twees do
    collection do
      post :confirm
    end
  end
end
