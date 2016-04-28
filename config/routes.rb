Rails.application.routes.draw do
  resources :sales
  resources :products
  devise_for :users
  get  '/buy/:permalink', to: 'transactions#new',      as: :show_buy
  post '/buy/:permalink', to: 'transactions#create',   as: :buy
  get  '/pickup/:guid',   to: 'transactions#pickup',   as: :pickup
  get  '/download/:guid', to: 'transactions#download', as: :download

  mount StripeEvent::Engine => '/stripe-events'


end
