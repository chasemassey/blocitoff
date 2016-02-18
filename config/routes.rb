Rails.application.routes.draw do

  devise_for :users
    resources :users, only: [:update, :show] do
      resources :items, only: [:create, :new, :destroy]
    end

    get 'welcome/index'
    get 'welcome/about'
      root to: "welcome#index"
end
