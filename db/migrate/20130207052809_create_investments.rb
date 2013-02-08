class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|

      t.integer :toWho
      t.integer :howMuch
      t.boolean :confirm

      t.references :user
      t.references :pro

      t.timestamps
    end
  end
end
