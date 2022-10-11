Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :owners, only: [:index, :create, :show, :update, :destroy]

  resources :equipments, only: [:index, :create, :show, :update, :destroy]

  resources :owners do
    member do
      get :equipment_list
    end
  end
end
