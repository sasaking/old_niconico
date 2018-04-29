class CreateReserves < ActiveRecord::Migration[5.0]
  def change
    create_table :reserves do |t|
      t.string :reserve_id, null: false
      t.string :event_id, null: false
      t.string :name
      t.string :kana
      t.string :child_name, null: false
      t.string :child_kana, null: false
      t.string :child_age
      t.text :email, null:false
      t.string :tel
      t.string :reserve_period_id, null: false
      t.integer :beginner_flg
      t.string :question_id, null: false
      t.text :remarks

      t.timestamps
    end
  end
end
