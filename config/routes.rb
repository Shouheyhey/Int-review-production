IntReviewProduct::Application.routes.draw do

  devise_for :users, controllers: {
    :registrations=>'users/registrations',
    :passwords=>'users/passwords',
    :sessions=>'users/sessions',
    :unlocks=>'users/unlocks',
    :omniauth_callbacks=>'users/omniauth_callbacks'
  }
  get "pages/new_registration_notification"
  resources :abouts, only: :index
  resources :terms, only: :index
  resources :users, only: :show
  resources :products, only: :show do
    collection do
      get 'search'
  end
end
  resources :reviews, only: [:new, :create]
  root 'products#index'
end
