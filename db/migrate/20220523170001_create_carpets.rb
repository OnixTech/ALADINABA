class CreateCarpets < ActiveRecord::Migration[7.0]
  def change
    create_table :carpets do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :condition
      t.boolean :available, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
