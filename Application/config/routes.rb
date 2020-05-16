Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :grades
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  
  
  
  get 'calculator/gradeCalculator'
  get 'calculator/gradeTable'
  get 'login/loginPage'
  get 'welcome/index'
  get 'home_page/index'
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :login
  
  root 'users#new'
end
