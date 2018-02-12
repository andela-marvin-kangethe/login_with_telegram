class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :publisher
      t.integer :rating, null: false, default: 0
      t.string :genre

      t.timestamps
    end
  end
end
