Joelsammich::Application.routes.draw do
  root :to => 'sandwich_orders#index'

  devise_for :users

  resources :sandwich_orders
  
  match 'success' => "sandwich_orders#success", :as => "success"

end
