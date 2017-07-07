class ChangeRatingType < ActiveRecord::Migration[5.1]
  def change
    change_column :reviews, :rating, :decimal, precision: 1, scale: 0
  end
end
