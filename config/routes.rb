Rails.application.routes.draw do
  root "static_pages#home"
  get "photos", to: "static_pages#get_images"
  resources :kittens
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
