TechReviewSite::Application.routes.draw do

  devise_for :users
  #only: :showでshowのルートを設定する前はどういう状態（devise_forで作れていたかと思っていた、rake routesをすると色々と出ていたから）？(自分でdeviseに元から保存されていること以外のことをするときは設定しないといけないのか)
  resources :users, only: :show
  resources :terms, only: :index
  resources :abouts, only: :index
  resources :products, only: :show do
    resources :reviews, only: [:new, :create]

    collection do
      get 'search'
    end
  end
  root 'products#index'

end
