Rails.application.routes.draw do
  root to: "home#index"
  resources :grades 
  resources :subjects
  resources :chapters
  resources :notes
  resources :quizzes 
  resources :questions


  # devise_for :users
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
