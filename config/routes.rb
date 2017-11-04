Rails.application.routes.draw do

  root "artiszoo#index"

  get "artiszoo" => "artiszoo#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
