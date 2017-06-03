IntReviewProduct::Application.routes.draw do
  devise_for :users, controllers: {
    :registrations=>'users/registrations',
    :passwords=>'users/passwords',
    :sessions=>'users/sessions',
    :unlocks=>'users/unlocks',
    :omniauth_callbacks=>'users/omniauth_callbacks'
  }


   #only: :showでshowのルートを設定する前はどういう状態（devise_forで作れていたかと思っていた、rake routesをすると色々と出ていたから）？(自分でdeviseに元から保存されていること以外のことをするときは設定しないといけないのか)
  get "pages/notification"
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
