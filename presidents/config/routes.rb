#ActionController::Routing::Routes.draw(:delimiters => ['/', '.', '!', '\(', '\)' ]) do |map|
ActionController::Routing::Routes.draw do |map|
#  map.resources :presidents
#  map.connect '/presidents(.:format)', :controller => 'presidents', :action => 'index'
  map.resource :presidents
#  map.sdata_resource :presidents #, :formatted_collection_path => true
end