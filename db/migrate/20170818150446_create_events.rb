class CreateEvents < ActiveRecord::Migration[5.0]
#  artテーブルの外部キー設定（主キー側のnilを制約）
#  has_many :art, required: true 

  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.date :date
      t.string :plase
      t.integer :price
      t.integer :artid
      t.integer :artid2
      t.text :note

      t.timestamps
    end
  end
end
