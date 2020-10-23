Rails.application.routes.draw do
  get 'questions/index'
  get 'questions/show'
  get 'questions/edit'
  get 'questions/new'
  get 'posts/index'
  get 'posts/show'
  get 'posts/edit'
  get 'posts/new'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
