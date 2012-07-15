Joelsammich::Application.routes.draw do
  get "pages/index", :as => "static_index"
  get "pages/about_us", :as => "about_us"
  get "pages/contact", :as => "contact"

  authenticated :user do
    root :to => 'sandwich_orders#index'
  end
  
  root :to => 'pages#index'
  
  devise_for :users
  
  resources :sandwich_orders
  
  match 'success' => "sandwich_orders#success", :as => "success"

end
