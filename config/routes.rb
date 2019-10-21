Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#  resources :bloggers, only: [:show, :new]
  get '/bloggers/new', to: 'bloggers#new', as: 'new_blogger'
  get '/bloggers',  to: 'bloggers#index', as: 'bloggers'
  post '/bloggers', to: 'bloggers#create' 
  get 'bloggers/:id', to: 'bloggers#show', as: 'blogger'
  #get 'destinations', to: 

#get '/posts/:id', to: 'posts#show', as: 'post'

#get '/destinations', to: 'destinations#index' as: 'destination'

post '/posts/:id/like', to: 'posts#like', as: 'like'


get '/posts/:id/destroy', to: 'posts#destroy'


resources :posts, only: [:show, :new, :index, :create, :destroy, :delete]
resources :destinations, only: [:show]


end
