class CreateChapters < ActiveRecord::Migration[6.1]
  def change
    create_table :chapters do |t|
      t.string :title
      t.references :subject

      t.timestamps
    end
  end
end
