class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :body
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :answer
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
