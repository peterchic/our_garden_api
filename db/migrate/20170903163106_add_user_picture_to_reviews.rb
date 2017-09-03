class AddUserPictureToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :user_thumbnail, :string
  end
end
