class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.integer :year
      t.integer :month
      t.string :titles

      t.timestamps
    end
  end
end
