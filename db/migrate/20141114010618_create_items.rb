class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.references :section, index: true

      t.timestamps
    end
  end
end
