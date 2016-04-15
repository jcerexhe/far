class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :level
      t.string :city
      t.string :country
      t.integer :age
      t.text :bio
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
