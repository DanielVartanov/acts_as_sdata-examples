ActionController::Routing::Routes.draw(:delimiters => ['/', '.', '!', '\(', '\)' ]) do |map|
#  map.resource :presidents
  map.sdata_resource :presidents #, :formatted_paths => true
end