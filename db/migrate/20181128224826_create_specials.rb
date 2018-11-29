class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string  :special_name
      t.integer :run_time
      t.string  :thumbnail

      t.timestamps null: false
    end
  end
end
