class CreateOccurrences < ActiveRecord::Migration[5.1]
  def change
    create_table :occurrences do |t|
      t.string :note
      t.references :habit, foreign_key: true
      t.timestamps
    end
  end
end
