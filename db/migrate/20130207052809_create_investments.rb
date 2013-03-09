class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|

      t.integer :towho
      t.integer :howmuch
      t.boolean :confirm

      t.references :user
      t.references :pro

      t.timestamps
    end
  end
end
