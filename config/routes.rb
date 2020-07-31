Rails.application.routes.draw do

devise_for :users
# after
root 'items#index'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :edit, :update, :index]
  resources :profiles, only: [:index]

  resources :items, only: [:index, :show, :new, :create]

resources :items do
    member do
    get 'confirm'
    end
  end


end
