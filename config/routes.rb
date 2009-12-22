ActionController::Routing::Routes.draw do |map|
  map.resources :contacts
  map.resource :user_session
  map.resource :account, :controller =>"users"
  map.resources :users
  map.root :controller => "user_sessions", :action => :new

  map.connect ':controller/:action/:id'
end
