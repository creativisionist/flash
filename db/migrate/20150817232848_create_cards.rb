class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string  :front
      t.string  :back
      t.integer :correct_answers
      t.integer :wrong_answers

      t.timestamps null: false
    end
  end
end
