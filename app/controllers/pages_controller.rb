class PagesController < ApplicationController

  def index
    @pages = Page.all #find(params[:book_id]) books#newにてpageテーブルに最初のページを作成するフォームを実装後、記述を変更
  end

  def new
    @page = Page.new
    @book = Book.find(params[:book_id])
  end

  def create
    page = Page.new(page_params)
    if page.save
      redirect_to book_pages_path
    else
      render new_book_page_path
    end
  end

  private
  def page_params
    params.require(:page).permit(:page_title, :novel_page).merge(user_id: current_user.id, book_id: params[:book_id])
  end
end
