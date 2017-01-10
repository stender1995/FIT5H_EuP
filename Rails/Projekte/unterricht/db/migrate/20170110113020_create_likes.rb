class CreateLikes < ActiveRecord::Migration[5.0]
  def change
  	#drop_table :likes
    create_table :likes do |t|
      t.integer :quality
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
