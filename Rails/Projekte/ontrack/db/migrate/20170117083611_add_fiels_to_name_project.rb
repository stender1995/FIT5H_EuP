class AddFielsToNameProject < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
    end
  end
end
