Rails.application.routes.draw do
  
  resources :students, only: [:index, :new, :show, :create, :edit, :update]
  resources :school_classes, only: [:index, :new, :show, :create, :edit, :update]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
