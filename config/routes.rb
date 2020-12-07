Rails.application.routes.draw do
  get 'search/search'
  root 'homes#top'
  get 'homes/about' => 'homes#about' , as: 'about'
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  resources :users, only: [:index, :show, :edit, :update]
  resources :products do
   resource :favorites, only: [:create, :destroy]
  end
  get 'favorite/index' => 'favorites#index', as: 'favorite_index'
  get 'user/my_page' => 'users#my_page' , as: 'user_my_page'
  get 'user/mode_select/:id' => 'users#mode_select', as: 'user_mode_select'
  patch 'users/mode_change/:id' => 'users#mode_change', as: 'user_mode_change'
  patch 'product/hideen_change/:id' => 'products#hideen_change', as: 'product_hidden_change'
  get 'search' => 'search#search'
end
