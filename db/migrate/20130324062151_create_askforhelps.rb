class CreateAskforhelps < ActiveRecord::Migration
  def change
    create_table :askforhelps do |t|
      
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
