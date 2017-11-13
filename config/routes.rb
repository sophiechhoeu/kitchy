Rails.application.routes.draw do
  get 'contacts/create'

  get 'contacts/new'

  get 'thankyou/new'

  get 'thankyou/create'

  get 'order/new'

  get 'order_products/create'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :categories
  resources :profiles
  resources :order_products

  resources :products do
    member do
      resource :charge
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: 'products#index'
  get '/mypurchase', to: 'transactions#index', as: 'mypurchase'
  get '/messages', to: 'messages#index', as: 'messages'



  resources :conversations, only: [:create] do
   member do
     post :close
   end

   resources :messages, only: [:create]
 end
end
