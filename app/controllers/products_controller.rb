class ProductsController < RankingController
  before_action :"ranking"
  # 検索した後のページ、もしくは投稿ページに遷移する前に、ログインしてなければログインページに遷移するbefore action
  # before_action :authenticate_user!, only: :show
  def index
    @products = Product.order('id ASC').per_page_kaminari(params[:page]).per(10)
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
  #
  # def ranking
  #     product_ids = Review.group(:product_id).order('count_product_id DESC').limit(5).count(:product_id).keys
  #     @ranking = product_ids.map{|id| Product.find(id)}
  # end

end
