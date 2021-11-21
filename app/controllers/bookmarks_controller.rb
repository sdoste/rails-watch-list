class BookmarksController < ApplicationController
  def index
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
    @bookmark.list_id = params[:list_id]
  end

  def create
    @bookmark = Bookmark.new(bookmarks_params)
    @list = List.find(params[:list_id])
    @bookmark.list_id = @list.id
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to list_path(@bookmark.list_id)
  end

  private

  def bookmarks_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
