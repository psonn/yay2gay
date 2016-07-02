class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  def index
    @news = News.all
  end

  def show
  end

  def new
    @news = News.new
  end

  def edit
  end

  def create
    @news = News.new(news_params)

      if @news.save
        redirect_to @news, notice: 'News was successfully created.'
      else
        render :new 
      end
  end

  def update
      if @news.update(news_params)
        redirect_to @news, notice: 'News was successfully updated.'
      else
        render :edit 
      end
  end

  def destroy
    @news.destroy
      redirect_to news_index_url, notice: 'News was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:title, :body)
    end
end
