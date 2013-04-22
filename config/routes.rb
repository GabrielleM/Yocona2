Yocona2::Application.routes.draw do
  # resources :trips, :rivers

# MH 3/24/13 - Create nested resource route mappings and associations 
resources :alltrips, :only => [:index]

resources :rivers do
	resources :trips do
	end 
end


#MH 4/21/13 - Add search_results route to display search results 
match '/search_results' => 'trips#search_results'

# MH 3/24/13 - Create routes for search and browse pages -- will need to be modified for river>trip nested routing changes 
  match '/search' => 'trips#search'
  match '/browse' => 'trips#browse'
  # match "/patients/:id" => "patients#show"

# MH 3/24/13 - Landing page (currently static)
  devise_for :users
  root :to => 'trips#landing' 

end

