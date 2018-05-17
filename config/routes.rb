Rails.application.routes.draw do

  get 'doses/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:create, :new, :index, :show] do
    resources :doses, only: [:create, :new]
  end
    resources :doses, only: :destroy
end

