Yocona2::Application.routes.draw do
  resources :rivers

  resources :trips, :rivers

  match '/search' => 'trips#search'
  match '/browse' => 'trips#browse'
  # match "/patients/:id" => "patients#show"

  devise_for :users
  root :to => 'trips#landing' 

end
