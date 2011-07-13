Stan::Application.routes.draw do
  resources :trips

  match 'rss' => 'trips#feed', :as => 'rss'
  
  root :to => "trips#index"  
end
