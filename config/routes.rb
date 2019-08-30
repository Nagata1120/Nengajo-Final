Rails.application.routes.draw do
  get 'session/new'


  resources :users
  resources :recipients_users
  resources :histories
  resources :recipients
  resources :recipients do
    collection { post :import}
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get	'login'    => 'session#new'
  post	'login'	   => 'session#create'
  get	'logout'   => 'session#destroy'
  get  'menu/:id'  => 'menu#index'        #idをindex(メニュー画面)に渡す
  post '/recipients/:id'  =>  'recipients#create'
  post '/recipients/:id'  =>  'recipients#update'
  root to: 'session#index'
  get 'menu/index' 
  
end

