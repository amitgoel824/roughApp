class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :ques
      t.string :opt1
      t.string :opt2
      t.string :opt3
      t.integer :ans
      t.integer :categoty
      t.integer :points

      t.timestamps
    end
  end
end
