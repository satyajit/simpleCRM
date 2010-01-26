ActionController::Routing::Routes.draw do |map|
  map.resources :messages
  map.resources :password_resets
  map.resources :tasks

  map.resources :deals

  map.resources :contacts
  map.resource :user_session
  map.resource :account, :controller =>"users"
  map.resources :users, :collection => { :autocomplete_for_user_email => :get }
  map.root :controller => "user_sessions", :action => :new

  map.connect ':controller/:action/:id'
end
