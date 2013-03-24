Yocona2::Application.routes.draw do
  resources :trips

  devise_for :users
  root :to => 'trips#landing' 

end
