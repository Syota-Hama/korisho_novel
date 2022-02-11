class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render new_book_path
    end
  end

  private
  def book_params
    params.require(:book).permit(:novel_title, :synopsis, :genre_id).merge(user_id: current_user.id)
  end
end
