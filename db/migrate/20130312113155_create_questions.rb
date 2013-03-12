class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

      t.string :name
      t.boolean :show
      t.string :context

      t.references :user
      t.references :pro

      t.timestamps
    end
  end
end
