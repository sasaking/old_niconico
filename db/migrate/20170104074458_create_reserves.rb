class CreateReserves < ActiveRecord::Migration[5.0]
  def change
    create_table :reserves do |t|
      t.string :event
      t.string :name
      t.string :kana
      t.string :child_name
      t.string :child_kana
      t.integer :child_age
      t.string :email
      t.string :tel
      t.string :reserve_period
      t.boolean :beginner
      t.string :qa
      t.text :remarks

      t.timestamps
    end
  end
end
