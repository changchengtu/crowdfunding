class CreatePresubs < ActiveRecord::Migration
  def change
    create_table :presubs do |t|
      t.string :Pname
      t.string :Pclassify
      t.integer :Pgoal
      t.string :Pintro
      t.string :Psummary
      t.string :Pfeedback
      t.boolean :confirm

      t.references :user

      t.timestamps
    end
  end
end
