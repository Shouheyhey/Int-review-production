IntReviewProduct::Application.routes.draw do

  devise_for :users, controllers: {
    :registrations=>'users/registrations',
    :passwords=>'users/passwords',
    :sessions=>'users/sessions',
    :unlocks=>'users/unlocks',
    :omniauth_callbacks=>'users/omniauth_callbacks'
  }

  get "pages/new_registration_notification"
  get "pages/registration_question_1"
  get "pages/registration_question_2"
  get "pages/registration_question_3"
  get "pages/registration_question_4"
  get "pages/registration_question_5"
  resources :abouts, only: :index
  resources :terms, only: :index
  resources :users, only: :show
  resources :products, only: :show do
    collection do
      get 'search'
  end
end
  resources :reviews, only: [:new, :create] do
    collection do
      get 'search'
    end
end
  root 'products#index'

end
