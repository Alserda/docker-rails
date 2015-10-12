class CreateStands < ActiveRecord::Migration
  def change
    create_table :stands do |t|
      t.belongs_to :organisation, index: true, foreign_key: true
      t.string :name
      t.string :address
      t.string :postalcode
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
