Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #make namespaces to version the API endpoints. But this won't take care of everything.
  namespace :v1 do
  	resources :users
  	resources :topics do
  		resources :posts
  	end
  end
end
