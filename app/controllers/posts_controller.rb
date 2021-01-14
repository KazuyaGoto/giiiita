class PostsController < ApplicationController

   before_action :authenticate_user!
  #一覧ページ
  def index
    if params[:search] == nil
      @posts= Post.all
  elsif params[:search] == ''
      @posts= Post.all
    else
      #部分検索
      @posts = Post.where("body LIKE ? ",'%' + params[:search] + '%')
    end
  end
  

  def index_web
    if params[:search] == nil
      @posts_web = Post.where(corse_id: 1)
      elsif params[:search] == ''
        @posts_web = Post.where(corse_id: 1)
      else
        #部分検索
        @posts_web = Post.where("body LIKE ? ",'%' + params[:search] + '%')
    end
    
  end
  def index_iPhone
    if params[:search] == nil
      @posts_iPhone= Post.where(corse_id: 3)
      elsif params[:search] == ''
        @posts_iPhone= Post.where(corse_id: 3)
      else
        #部分検索
        @posts_iPhone = Post.where("body LIKE ? ",'%' + params[:search] + '%')
    end
  end  
  def index_game
    if params[:search] == nil
      @posts_game= Post.where(corse_id: 2)
      elsif params[:search] == ''
        @posts_game= Post.where(corse_id: 2)
      else
        #部分検索
        @posts_game = Post.where("body LIKE ? ",'%' + params[:search] + '%')
    end
   
  end


  def show
    @post = Post.find(params[:id])
  end
  
    
  
  def new 
    @post = Post.new
  end


  def create
    post = Post.new(post_params)
    post.user_id = current_user.id
    if post.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end
  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to :action => "show", :id => post.id
    else
      redirect_to :action => "new"
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image, :url,:corse_id,:era)
  end

end
