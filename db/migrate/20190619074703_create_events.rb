class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :place
      t.text :memo
      t.datetime :start_date, null: false
      t.datetime :end_date
      t.timestamps
    end
  end
end
