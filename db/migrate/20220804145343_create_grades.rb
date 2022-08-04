class CreateGrades < ActiveRecord::Migration[6.1]
  def change
    debugger
    create_table :grades do |t|
      t.string :title

      t.timestamps
    end
  end
end
