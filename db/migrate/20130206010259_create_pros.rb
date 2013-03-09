class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
      t.string :name
      t.string :classify
      t.integer :goal
      t.text :pic
      t.string :video
      t.string :describe
      t.text :intro
      t.text :summary
      t.text :feedback
      t.boolean :useron
      t.boolean :manageron
      t.integer :days
      t.integer :got
      t.string :start
      t.integer :goaldays 

      t.references :user
      t.references :presub

      t.timestamps
    end
  end
end
