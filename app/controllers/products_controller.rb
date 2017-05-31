class ProductsController < RankingController
  # 検索した後のページ、もしくは投稿ページに遷移する前に、ログインしてなければログインページに遷移するbefore action
  before_action :authenticate_user!, only: :show
  def index
    @products = Product.order('id ASC').page(params[:page]).per(6)
    # productsテーブルから最新順に作品を２０件取得する
  end

  def show
    # productsテーブルから該当するidの作品情報を取得し@productの変数へ代入する処理を書いて下さい
    @product = Product.find(params[:id])
  end

  def search
    # 検索フォームのキーワードをあいまい検索して、productsテーブルから20件の作品情報を取得する
    @products = Product.where('title LIKE(?)', "%#{params[:keyword]}%").limit(10)
  end
end
