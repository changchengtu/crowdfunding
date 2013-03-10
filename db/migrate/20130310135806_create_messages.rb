class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.string :message
      t.boolean :ques
      t.string :user_name

      t.references :pro
      t.references :user

      t.timestamps
    end
  end
end
