class CreateToDos < ActiveRecord::Migration[5.2]
  def change
    create_table :to_dos do |t|
      t.string :title, null: false
      t.string :body, null: false 
      t.boolean :done, null: false 
      t.timestamps 
    end
    add_index :to_dos, :title 
  end
end
