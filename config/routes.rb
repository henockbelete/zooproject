Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "animals#index"

get "animals" =>"animals#index"
get "animals/:id" => "animals#show", as: :animal
end
