class CreateArts < ActiveRecord::Migration[5.0]
  def change
    create_table :arts do |t|
      t.string :art_id
      t.date :effective_start
      t.date :effective_end
      t.string :art_name
      t.string :art_type
      t.binary :image_binary

      t.timestamps
    end
  end
end
