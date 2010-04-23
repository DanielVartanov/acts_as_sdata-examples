ActionController::Routing::Routes.draw(:delimiters => ['/', '.', '!', '\$', '\(', '\)' ]) do |map|
  map.sdata_resource :trading_accounts, :prefix => '/sdata/billingboss/crmErp/-/', :namespace => 's_data'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end