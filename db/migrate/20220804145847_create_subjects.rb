class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    debugger
    create_table :subjects do |t|
      t.string :title
      t.references :grade

      t.timestamps
    end
  end
end
