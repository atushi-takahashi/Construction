Rails.application.routes.draw do
  root to: 'welcome#top'
  get 'welcome/about' => 'welcome#about'
  devise_for :users
  devise_scope :user do
    post '/users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  resources :users, only: [:show, :index, :edit, :update]
  resources :posts
  resources :questions
  post   '/favorite/:post_id' => 'favorites#post_favorite', as: 'post_favorite'
  delete '/favorite/:post_id' => 'favorites#post_unfavorite', as: 'post_unfavorite'
  post   '/favorite/:question_id' => 'favorites#question_favorite', as: 'question_favorite'
  delete '/favorite/:question_id' => 'favorites#question_unfavorite', as: 'question_unfavorite'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end