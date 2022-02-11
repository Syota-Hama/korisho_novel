class PagesController < ApplicationController

  def index
    @book = Book.find(params[:book_id])
    @pages = @book.pages.includes(:book)
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

  def show
    @book = Book.find(params[:book_id])
    @pages = @book.pages.includes(:book)
    @page = @pages.find(params[:id])
  end

  private
  def page_params
    params.require(:page).permit(:page_title, :novel_page).merge(user_id: current_user.id, book_id: params[:book_id])
  end
end
