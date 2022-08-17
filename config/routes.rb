Rails.application.routes.draw do
  namespace 'api' do
    resources :parking, only: [:create]
    resources :user, only: [:create]
    resources :charge, only:[:create]
    resources :spot, only:[:create]
    resources :payment, only:[:create]
  end
end
  