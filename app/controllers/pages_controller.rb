class PagesController < ApplicationController
  def index
    @pages = Page.all #find(params[:book_id]) books#newにてpageテーブルに最初のページを作成するフォームを実装後、記述を変更
  end
end
