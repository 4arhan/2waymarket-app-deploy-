class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :seller
      t.text :desciption
      t.integer :price
      t.boolean :availability

      t.timestamps
    end
  end
end
