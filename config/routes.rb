Rails.application.routes.draw do
  resources :somethings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show]
  resources :posts, only: [:index, :show, :new, :create, :edit]
  get 'posts/:id/post_data', to: 'posts#post_data'
end
