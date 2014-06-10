class AddRatingToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :rating, :integer, null: true
  end
end
