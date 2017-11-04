Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "animals#index"

 get "animals" =>"animals#index"
get "animals/new" => "animals#new", as: :new_animal
 get "animals/:id" => "animals#show", as: :animal
post "animals" => "animals#create"
get 'animals/:id/edit' => 'animals#edit', as: :edit_animal
patch "animals/:id" => "animals#update"
delete "animals/:id" => "animals#destroy"
#resources :animals
end
