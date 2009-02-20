ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'site'
  map.resources :users
end
