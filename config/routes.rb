Rails.application.routes.draw do

  root "artiszoo#index"

  get "artiszoos" => "artiszoo#index"

  get "artiszoos/:id" => "artiszoo#show", as: :artiszoo
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "animals#index"

# get "animals" =>"animals#index"
# get "animals/new" => "animals#new", as: :new_animal
# get "animals/:id" => "animals#show", as: :animal
# post "animals" => "animals#create"

resources :animals
end
