class CreateSubjects < ActiveRecord::Migration
  
  def up
    create_table :subjects do |t|
      t.string :name
      t.column "position", :integer
      t.boolean :visible
      
      # t.datetime "created_at"
      # t.datetime "updated_at"
      t.timestamps null: false
    end
  end
  
  def down
    drop_table :subjects
  end
  
end
