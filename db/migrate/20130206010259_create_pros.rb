class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
      t.string :Pname
      t.string :Pclassify
      t.integer :Pgoal
      t.text :Ppic
      t.string :Pvideo
      t.string :Pdescribe
      t.text :Pintro
      t.text :Psummary
      t.text :Pfeedback
      t.boolean :PuserOn
      t.boolean :PmanagerOn
      t.integer :days
      t.integer :Pgot

      t.references :user
      t.references :presub

      t.timestamps
    end
  end
end
