Rails.application.routes.draw do
  resources :coupons, only: [:index, :new, :show]
  get '/coupon/:id', to: 'coupons#show'
  post '/coupons', to: 'coupons#create'
end
