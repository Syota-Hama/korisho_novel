class ConfigurationsController < ApplicationController
  def index
    @book = Book.find(params[:book_id])
    @configurations = @book.configurations.includes(:book)
  end

  def new
    @configuration = Configuration.new
    @book = Book.find(params[:book_id])
  end

  def create
    configuration = Configuration.new(configuration_params)
    if configuration.save
      redirect_to book_configurations_path
    else
      render new_book_configuration_path
    end
  end

  def show
    @book = Book.find(params[:book_id])
    @configurations = @book.configurations.includes(:book)
    @configuration = @configurations.find(params[:id])
  end

  private
  def configuration_params
    params.require(:configuration).permit(:category_id, :configuration_novel).merge(book_id: @book.id, user_id: current_user.id)
  end
end
