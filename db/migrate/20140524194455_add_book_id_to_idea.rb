class AddBookIdToIdea < ActiveRecord::Migration
  def change
  	add_column :ideas, :book_id, :integer
  end
end
