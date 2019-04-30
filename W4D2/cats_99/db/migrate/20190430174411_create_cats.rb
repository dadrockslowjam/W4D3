class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.date :birth_date, null: true
      t.string :color, null: true
      t.string :name, null: true
      t.string :sex, null: true, limit:1
      t.text :description, null: true
      t.timestamps

    end
  end
end
