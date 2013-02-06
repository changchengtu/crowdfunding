class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
      t.string :Pname
      t.string :Pclassify
      t.integer :Pgoal
      t.text :Pintro
      t.text :Psummary
      t.text :Pfeedback
      t.boolean :Pon

      t.references :user
      t.references :presub

      t.timestamps
    end
  end
end
