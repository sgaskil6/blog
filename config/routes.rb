Rails.application.routes.draw do
  root "articles#index"
  
  # resources maps all of the convenient routes for a collection of resources (like articles)
  resources :articles do
    resources :comments
  end

end


# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
