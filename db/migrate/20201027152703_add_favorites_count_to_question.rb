class AddFavoritesCountToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :favorites_count, :inteder
  end
end
