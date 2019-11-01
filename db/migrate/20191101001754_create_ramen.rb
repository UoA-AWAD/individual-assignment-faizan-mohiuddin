class CreateRamen < ActiveRecord::Migration[5.2]
  def change
    create_table :ramen do |t|
      t.string :Brand
      t.string :Variety
      t.string :Style
      t.string :Country
      t.decimal :Stars

      t.timestamps
    end
  end
end
