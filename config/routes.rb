Stan::Application.routes.draw do
  resources :trips

  match 'rss' => 'trips#feed', :as => 'rss'
  match 'favorites' => 'trips#favorites', :as => 'favorites'
  
  root :to => "trips#index"  
end
