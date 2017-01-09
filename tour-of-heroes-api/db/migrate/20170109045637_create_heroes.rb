class CreateHeroes < ActiveRecord::Migration
  def change
    create_table :heroes do |t|
      t.string :name, null:false

      t.timestamps
    end
    add_index :heroes, :name, unique: true
  end
end
