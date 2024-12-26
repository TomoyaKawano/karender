
class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.text :content
      t.integer :day
      t.integer :month
      t.integer :line_number
      t.timestamps
    end
    
    add_index :notes, [:day, :month, :line_number], unique: true
  end
end