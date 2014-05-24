class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :ref
      t.text :detail

      t.timestamps
    end
  end
end
