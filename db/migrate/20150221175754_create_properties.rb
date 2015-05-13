class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :image
      t.binary :sold

      t.timestamps
    end
  end
end
