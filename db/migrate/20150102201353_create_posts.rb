class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
   	  t.string :title
   	  t.text :description
   	  t.integer :points
   	  t.integer :user_id
   	  
      t.timestamps
    end
  end
end
