class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.decimal :salary, precision: 5, scale: 3

      t.timestamps
    end
  end
end
