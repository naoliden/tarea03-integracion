Rails.application.routes.draw do
  root 'index#home'
  match ':controller(/:action)', :via => :get
  # match '(:controller(/:action(/:_id))', :via => :get
  # get 'index/home'
  # get 'index/get_film'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
