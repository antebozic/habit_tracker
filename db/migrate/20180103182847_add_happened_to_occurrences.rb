class AddHappenedToOccurrences < ActiveRecord::Migration[5.1]
  def change
    add_column :occurrences, :happened, :integer, :default => 1
  end
end
