Rails.application.routes.draw do
  
	root 'recipes#index'
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	#get "recipes" => "recipes#index"
	resources :recipes do
		resources :comments
	end
end
