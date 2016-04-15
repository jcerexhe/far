class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :image
      t.integer :average_level

      t.timestamps null: false
    end
  end
end
