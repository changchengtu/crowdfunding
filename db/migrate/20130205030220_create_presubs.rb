class CreatePresubs < ActiveRecord::Migration
  def change
    create_table :presubs do |t|
      t.string :name
      t.string :classify
      t.integer :goal
      t.string :intro
      t.string :summary
      t.string :feedback
      t.boolean :confirm

      t.references :user

      t.timestamps
    end
  end
end
