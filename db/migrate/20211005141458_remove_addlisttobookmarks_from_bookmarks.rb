class RemoveAddlisttobookmarksFromBookmarks < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookmarks, :AddListToBookmarks
  end
end
