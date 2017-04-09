Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :user, only: [:index, :show]  do
    resources :service do
      resources :reserve
      resources :review
    end
  end

  get '/get-user', to: 'user#get_user_id'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
