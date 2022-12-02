class CreateAttends < ActiveRecord::Migration[7.0]
  def change
    create_table :attends do |t|
      t.string :name
      t.string :gender
      t.string :location
      t.text :comment

      t.timestamps
    end
  end
end
