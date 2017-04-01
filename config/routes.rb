Rails.application.routes.draw do
  resources :semantics, :only => [:index, :create]
  resources :product_caches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'semantics#index'
end
